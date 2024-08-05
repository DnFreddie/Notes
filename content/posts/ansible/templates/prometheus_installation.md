+++
title = 'Prometheus installation'
date = 2024-07-24T22:29:10+02:00
draft = false
+++

```yaml
---
- name: Install Prometheus 
  hosts: machines
  become: true  
  vars:
    prometheus_url: "https://github.com/prometheus/prometheus/releases/download/v2.25.0/prometheus-2.25.0.linux-amd64.tar.gz"
    prometheus_tarball: "{{ prometheus_url | basename | regex_replace('\\.tar\\.gz$', '') }}"

  tasks:

    - name: Make a user for Prometheus
      user:
        name: prometheus
        shell: /sbin/nologin
        system: true
        create_home: no
        group: prometheus  

    - name: Create a group for Prometheus
      group:
        name: prometheus
        system: true

    - name: Unarchive a file that needs to be downloaded 
      unarchive:
        src: "{{ prometheus_url }}"
        dest: /opt
        group: prometheus
        owner: prometheus
        remote_src: yes

    - name: Create a symbolic link to Prometheus
      file:
        src: "/opt/{{ prometheus_tarball }}"
        dest: /opt/prometheus
        owner: prometheus
        state: link

    - name: Linke the tarball 
      file:
        src: "/opt/{{ prometheus_tarball }}"
        dest: /opt/prometheus
        owner: prometheus
        state: link

    - name: Copy the configuration
      copy:
        remote_src: yes
        src: /opt/prometheus/prometheus.yml 
        dest: /etc/prometheus.yml
        owner: prometheus

    - name: Firewall set for 9100 to be accessible
      firewalld:
        port: 9090/tcp
        permanent: yes
        state: enabled
        immediate: yes
      failed_when: false
      ignore_errors: true

    - name: copy over the service file
      copy:
          src: prometheus.service
          dest: /etc/systemd/system/prometheus.service

    - name: Start the prometheus
      systemd:
        name: prometheus
        state: started
        daemon_reload: yes
        enabled: yes


```
