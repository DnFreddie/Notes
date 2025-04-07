---
title: "Molecule"
date: 2024-10-30T12:25:31+01:00
draft: false
tags:
  - ansible
---


* Use the official example of Molecule—**do not use `Red Hat's example`** as it’s outdated.
* Refer to the [Official Guide to Using Podman Containers with Molecule](https://ansible.readthedocs.io/projects/molecule/examples/podman/) for up-to-date information.
* For **basic setups**, you don’t need extra configurations for Podman, as it’s the default behavior in Molecule.
  * All you need is a `converge.yml` file and the `molecule.yml` configuration file.


## Plugins and installation
For now using the vagrant provider will result in [error](https://github.com/ansible-community/molecule-plugins/issues/301)

There are plans to remvoe the support for the molecule plugins [issue#510](https://github.com/ansible/ansible-dev-tools/issues/510#issuecomment-2605125502)
```bash
# The current work around
pip install --force-reinstall -v 'molecule==25.1.0'
```

To install plugins use this method  [ansible docs](https://ansible.readthedocs.io/projects/molecule/installation/)



## **Initialization**

_All you have to do is set up_ `molecule.yml`, `converge.yml`, and `verify.yml`.


```bash
# Initialize Molecule scenario with the Podman driver
molecule init scenario -d podman
```

### **Commands**
```bash
└── default
    ├── dependency   # Installs role dependencies (e.g., via requirements.yml)
    ├── cleanup      # Cleans up any leftover artifacts from previous runs
    ├── destroy      # Removes any existing test instances
    ├── syntax       # Checks the syntax of Ansible playbooks before running them
    ├── create       # Creates the test environment (e.g., spins up Docker containers/VMs)
    ├── prepare      # Applies additional setup (e.g., provisioning dependencies)
    ├── converge     # Runs the actual Ansible playbook to configure the system
    ├── idempotence  # Ensures rerunning `converge` produces no changes (idempotency check)
    ├── side_effect  # Runs optional extra tasks that don't impact idempotence (e.g., notifications)
    ├── verify       # Runs tests to validate the configuration (e.g., using Testinfra)
    ├── cleanup      # Cleans up after testing
    └── destroy      # Destroys the test environment (again)
    ## More efficient one
scenario:
  name: default
  test_sequence:
    - lint
    - destroy
    # - dependency
    - syntax
    - create
    # - prepare
    - converge
    - idempotence
    ## - side_effect
    - verify
    - destroy
```


Note

* Navigate between `molecule converge` and `molecule verify`.
  * `molecule test` will execute the full cycle from startup to destroy _(but is very verbose)_.
* use `molecule test  --destroy=never` to preserve the container

```bash
molecule converge
# Output:
# INFO     Running default > prepare
# WARNING  Skipping, prepare playbook not configured.
# INFO     Running default > converge
# INFO     Sanity checks: 'podman'

molecule verify
# Output:
# PLAY RECAP *********************************************************************
# instance                   : ok=1    changed=0    unreachable=0    failed=0    skipped=1    rescued=0    ignored=0
# INFO     Verifier completed successfully.
```


## Custom Flags
```bash
molecule test -- --tags=test
```
```yaml
#Exaple passing the passsword file

# ANSIBLE_VAULT_PASSWORD_FILE=$HOME/.vault.txt molecule test
# or a better way
provisioner:
  name: ansible
  config_options:
    defaults:
      vault_password_file: "${MOLECULE_SCENARIO_DIRECTORY}/vault.pw"

```
## **Molecule.yml**

_The deployment configuration_ [Chekcout the possible distros images](https://hub.docker.com/search?q=%2Fgeerlingguy%2F&badges=none&sort=updated_at&order=desc)

* [Custome Image](https://ansible.readthedocs.io/projects/molecule/guides/custom-image/)
* [Podman inside the docker](https://ansible.readthedocs.io/projects/molecule/guides/podman-inside-docker/) and [Podman inside Podman](https://www.redhat.com/en/blog/podman-inside-container)
* [systemd container setup](https://ansible.readthedocs.io/projects/molecule/guides/systemd-container/)

```yaml
# Standard setup for using Podman in Molecule

role_name_check: 1
# to add additional collection to the base node img
dependency:
  name: galaxy
  options:
    requirements-file: requirements.yml
    ignore-errors: true
driver:
  name: podman
  # This is the seutp for the containers with systemd inside them
platforms:
  - name: instance
    image: "docker.io/geerlingguy/docker-${MOLECULE_DISTRO:-ubuntu2004}-ansible:${MOLECULE_TAG:-latest}"
    command: ${MOLECULE_DOCKER_COMMAND:-""}
    volumes:
      - /sys/fs/cgroup:/sys/fs/cgroup:rw
    cgroupns_mode: host
    privileged: true
    pre_build_image: true
    user: "rocky"
provisioner:
  name: ansible
  playbooks:
    converge: ${MOLECULE_PLAYBOOK:-converge.yml}
```

## **Converge.yml**

The `converge.yml` file contains the actual playbook tasks within your Molecule test.

* **Sections**
  * **`pre_tasks`**: Prepare the container.
  * **`tasks`**: Main testing tasks.
  * **`post_tasks`**: Clean-up or post-test steps.

```yaml
#Example Converge file that imports either playbooks or roles
- name: Converge
  hosts: all
  pre_tasks:
    - name: Install dependencies
      package:
        name: curl
        state: present
  tasks:
    - name: Create a test file
      file:
        path: /tmp/molecule_test.txt
        state: touch
  post_tasks:
    - name: Remove test file
      file:
        path: /tmp/molecule_test.txt
        state: absent
- import_playbook: ../../playbook.yml
```
### Inventories
```yaml
# U can easliy specyfie the host_vars and group_vars
# also /molecule/defualt/group_vars or host_vars will import it to
provisoner:
  inventory:
    group_vars:
      all:
        containers:
          - name: adminer
            image: docker.io/library/adminer:latest
            ports:
              - { host: "8080", container: "8080" }
```
## **Verify.yml**

_All it does it's run a playbook to verify the state of the playbook_
_No special role just a playbook_
```yaml
# Example molecule verify playbook
- name: Verify
  hosts: all
  gather_facts: false
  vars:
  # If you want to import vars from the role, you have to either
  # add it as an empty role (not recommended)
  # or just use import_vars
  tasks:
    # Include vars from role
    - name: Initialize role without actually running it
      ansible.builtin.include_role:
        name: my_role
        tasks_from: init
    # Or import them from role
    - name: Include default vars
      ansible.builtin.include_vars:
        dir: "{{ lookup('env', 'MOLECULE_PROJECT_DIRECTORY') }}/defaults/"
        extensions:
          - yml
    - name: Check if {{ config }} exists
      ansible.builtin.stat:
        path: "{{ config }}"
      register: file_stat
    - name: Fail if file is missing
      ansible.builtin.fail:
        msg: "{{ config }}"
      when: not file_stat.stat.exists

```
# Delegete host
```yaml
---
driver:
  name: delegated  # Avoids creating a local instance

platforms:
  - name: backup_server
    address: 192.168.1.200  # Replace with the actual remote machine IP/hostname
    user: ansible           # SSH user
    ssh_port: 22            # SSH port
    connection: ssh
    instance_raw_config_args:
      - "-o StrictHostKeyChecking=no"

```

- [Ansible](/ansible/Ansible)

---
