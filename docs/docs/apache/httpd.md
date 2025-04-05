---
title: "httpd"
date: 2025-03-30
draft: false
---


To locate the appache httpd file use  apachectl


```bash
apachectl -V | grep -i root
# Server version: Apache/2.4.62 (Rocky Linux)
# Server built:   Jan 10 2025 00:00:00
# Server's Module Magic Number: 20120211:134
# Server loaded:  APR 1.7.0, APR-UTIL 1.6.1, PCRE 8.44 2020-02-12
# Compiled using: APR 1.7.0, APR-UTIL 1.6.1, PCRE 8.44 2020-02-12
# Architecture:   64-bit
# Server MPM:     event
#   threaded:     yes (fixed thread count)
#     forked:     yes (variable process count)
# Server compiled with....
#  -D APR_HAS_SENDFILE
#  -D APR_HAS_MMAP
#  -D APR_HAVE_IPV6 (IPv4-mapped addresses enabled)
#  -D APR_USE_PROC_PTHREAD_SERIALIZE
#  -D APR_USE_PTHREAD_SERIALIZE
#  -D SINGLE_LISTEN_UNSERIALIZED_ACCEPT
#  -D APR_HAS_OTHER_CHILD
#  -D AP_HAVE_RELIABLE_PIPED_LOGS
#  -D DYNAMIC_MODULE_LIMIT=256
#  -D HTTPD_ROOT="/etc/httpd"
#  -D SUEXEC_BIN="/usr/sbin/suexec"
#  -D DEFAULT_PIDLOG="run/httpd.pid"
#  -D DEFAULT_SCOREBOARD="logs/apache_runtime_status"
#  -D DEFAULT_ERRORLOG="logs/error_log"
#  -D AP_TYPES_CONFIG_FILE="conf/mime.types"
#  -D SERVER_CONFIG_FILE="conf/httpd.conf"

```
