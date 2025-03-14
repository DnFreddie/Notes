---
title: "Molecule"
date: 2024-10-30T12:25:31+01:00
draft: false
tags:
  - ansible
---

# **Testing Ansible with Molecule**

* Use the official example of Molecule—**do not use `Red Hat's example`** as it’s outdated.
* Refer to the [Official Guide to Using Podman Containers with Molecule](https://ansible.readthedocs.io/projects/molecule/examples/podman/) for up-to-date information.
* For **basic setups**, you don’t need extra configurations for Podman, as it’s the default behavior in Molecule.
  * All you need is a `converge.yml` file and the `molecule.yml` configuration file.

## **Initialization**
*All you have to do is set up* `molecule.yml`, `converge.yml`, and `verify.yml`.

> **Initialize Molecule scenario with the Podman driver**
```bash 
molecule init scenario -d podman
```

### **Commands**
- Navigate between `molecule converge` and `molecule verify`.
  - `molecule test` will execute the full cycle from startup to destroy *(but is very verbose)*.

> **Example: Running `molecule verify`**
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


## **Molecule.yml**
*The deployment configuration*

[Chekcout the possible distros images](https://hub.docker.com/search?q=%2Fgeerlingguy%2F&badges=none&sort=updated_at&order=desc)

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

> **Example Converge file that imports either playbooks or roles**
```yaml
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

## **Verify.yml**
*All you do here is verify the state of the previously deployed playbook.*

> **Example: `molecule verify` playbook**
```yaml
---
- name: Verify
  hosts: all
  gather_facts: false

  tasks:
    - name: Check if /etc/xd.md exists
      ansible.builtin.stat:
        path: /etc/xd.md
      register: file_stat

    - name: Fail if file is missing
      ansible.builtin.fail:
        msg: "/etc/xd.md does not exist!"
      when: not file_stat.stat.exists
```


### **Reference**
- [Ansible](/ansible/Ansible)

---


