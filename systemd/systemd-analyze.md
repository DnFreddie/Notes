Display  the boot time of the machine 

**blame**  displays the individuals  startup times of the services 

*Example output*

```bash 

systemd-analyze blame

4.842s NetworkManager-wait-online.service
3.219s docker.service
1.844s NetworkManager.service
```
