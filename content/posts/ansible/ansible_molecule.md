---
title: "Molecule"
date: 2024-10-30T12:25:31+01:00
draft: false
---

**Testing Ansible with Molecule**

* Use the official example of Molecule—**do not use [Red Hat's example]** as it’s outdated.
* Refer to the [Official Guide to Using Podman Containers with Molecule](https://ansible.readthedocs.io/projects/molecule/examples/podman/) for up-to-date information.

> `Note` For basic setups, you don’t need extra configurations for Podman, as it’s the default behavior in Molecule. All you need is a `converge.yml` file and the `molecule.yml` configuration file.

---

## Project Initialization

```bash
ansible-galaxy init mywebapp
cd mywebapp
# Initialize Molecule scenario with the Podman driver
molecule init scenario --driver-name podman
```

### Adding Metadata

If you are using **SELinux**, enable container management with the
following command:

``` bash
sudo setsebool -P container_manage_cgroup 1
```

------------------------------------------------------------------------

## Converge File

The `converge.yml` file is used for the actual playbook tasks within
your Molecule test.

### Key Molecule Sections

-   **`pre_tasks`**: Prepare the container.
-   **`tasks`**: Main testing tasks.
-   **`post_tasks`**: Clean-up or post-test steps.

------------------------------------------------------------------------

## Adding Metadata and Dependencies

To specify dependencies, create a `requirements.yml` file.

> **Example `requirements.yml`**

``` yaml
collections:
  - name: containers.podman
```

> **Example `metadata/main.yml`**

``` yaml
author: DnFreddie
namespace: dnfreddie      # Your Galaxy namespace (username or organization)
role_name: node_exporter   # Role name as it will appear in Galaxy
description: Ansible role to install and configure Node Exporter
```

------------------------------------------------------------------------

## Typical `molecule.yml` Configuration

This is a standard setup for using Podman in Molecule:

``` yaml
role_name_check: 1

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

------------------------------------------------------------------------
* [Ansible ](/Notes/posts/ansible/Ansible)
