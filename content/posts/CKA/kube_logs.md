---
title: 'Kube Logs'
date : 2024-11-29T09:34:49+01:00
draft: false
---

* Log Locations
    * /var/log/pods
    * /var/log/containers
    * crictl ps + crictl logs
    * docker ps + docker logs (in case when Docker is used)
    * kubelet logs: /var/log/syslog or journalctl

> Example checking for the misconfigured `kube-apiserver`
```bash
cat /var/log/syslog | grep kube-apiserver
# Becauce -p err doesnt work u have to filter mannualy 
# E1129 Means the Error and the date  29  November
journalctl -u kublet.service  --since "1h ago" | grep -E "err=" 
# Output:
# Nov 29 10:58:26 controlplane kubelet[734]: E1129 10:58:26.033507734 run.go:72] "command failed" err="failed to run Kubelet: validate service connection: validate CRI v1 runtime API for endpoint \"unix:///run/containerd/containerd.sock\": rpc error: code = Unknown desc = server is not initialized yet"
```

* Trubleshooting Api-server 
 A lot of the times the issue is with the missconfigured etcd flag or netwroking 
 Just verify the ETCD port in the `etcd.yaml` manifest (`--listen-client-urls` and `--advertise-client-urls`).
