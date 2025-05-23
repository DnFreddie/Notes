---
date: "2024-08-05T14:21:03+02:00"
draft: false
title: Node exporter installation
---

``` yaml
---
- name: Install node_exporter
  hosts: machines
  become: true  
  vars:
    node_exporter_url: "https://github.com/prometheus/node_exporter/releases/download/v1.8.2/node_exporter-1.8.2.linux-amd64.tar.gz"
    node_exporter_tarball: "{{ node_exporter_url | basename | regex_replace('\\.tar\\.gz$', '') }}"

  tasks:
    - name: Create a group for node_exporter
      group:
        name: node_exporter
        system: true
      notify: Restart node_exporter

    - name: Make a user for node_exporter
      user:
        name: node_exporter
        shell: /sbin/nologin
        system: true
        create_home: no
        group: node_exporter  
      notify: Restart node_exporter

    - name: Check if Node Exporter binary exists
      stat:
        path: /opt/node_exporter/node_exporter  
      register: binary

    - name: Unarchive a file that needs to be downloaded 
      unarchive:
        src: "{{ node_exporter_url }}"
        dest: /opt
        group: node_exporter
        owner: node_exporter
        remote_src: yes
      when: not binary.stat.exists
      notify: Download the binnary 

    - name: Create a symbolic link to node_exporter
      file:
        src: "/opt/{{ node_exporter_tarball }}"
        dest: /opt/node_exporter
        owner: node_exporter
        state: link
      notify: Restart node_exporter

    - name: Firewall set for 9100 to be accessible
      firewalld:
        port: 9100/tcp
        permanent: yes
        state: enabled
        immediate: yes
      failed_when: false
      ignore_errors: true

    - name: Copy over the service file
      copy:
        src: node_exporter.service
        dest: /etc/systemd/system/node_exporter.service
      notify: Restart node_exporter

    - name: Create directory for textfile collector
      file:
        path: /var/lib/node_exporter/textfile_collector
        state: directory
        owner: node_exporter
        group: node_exporter
        mode: '0755'
      notify: Restart node_exporter

    - name: Create sysconfig file for node_exporter
      file:
        path: /etc/sysconfig/node_exporter
        state: file
        owner: node_exporter
        group: node_exporter
        mode: '0644'
      notify: Restart node_exporter

    - name: Start the node_exporter
      systemd:
        name: node_exporter
        state: started
        daemon_reload: yes
        enabled: yes
      notify: Restart node_exporter

  handlers:
    - name: Restart node_exporter
      systemd:
        name: node_exporter
        state: restarted


```
