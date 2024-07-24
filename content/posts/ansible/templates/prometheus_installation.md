+++
title = 'Prometheus_installation'
date = 2024-07-24T22:29:10+02:00
draft = false
+++

```yaml
---
# tasks file for node_exporter
- name: make a user for prometheus
  user:
    name: node_exporter
    shell: /sbin/nologin
    create_home: no

- name: Copy over node_exporter to /usr/local/bin
  copy:
    src: node_exporter
    dest: /usr/local/bin/node_exporter
    mode: 0755

- name: copy over the service file
  copy:
    src: node_exporter.service
    dest: /etc/systemd/system/node_exporter.service

- name: Start the node_exporter service
  systemd:
    name: node_exporter
    state: started
    daemon_reload: yes
    enabled: yes

- name: Firewall set for 9100 to be accessible
  firewalld:
    port: 9100/tcp
    permanent: yes
    state: enabled
    immediate: yes
  failed_when: false
  ignore_errors: true

- name: Setup
  copy:
    content: |
      [
        {
          "targets": [ "{{hostvars[item]['ansible_default_ipv4']['address']}}:9100" ],
          "labels": {
            "team": "infra",
            "job": "node"
           }
        }
      ]
    dest: "/etc/prometheus/{{item}}.json"
  delegate_to: 192.168.11.193
  run_once: true
  loop: "{{ play_hosts }}"

- name: Restart prometheus
  shell: pkill -SIGHUP prometheus
  delegate_to: 192.168.11.193
  run_once: true
```
