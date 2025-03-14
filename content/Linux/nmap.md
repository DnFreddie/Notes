---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: nmap
---

-   **By default, Nmap scans 1000 ports**.
    -   You can scan multiple sites in one scan.
        -   You can also scan both the site and the particular
            [IP](/Network/Ref_OSI/IP).
-   You can easily get the IP and address of the site.
    -   Then check the location using [this
        tool](https://www.nirsoft.net/).
    -   You can also check it by typing **whois 45.33.32.156** in the
        browser.
-   Nmap provides a test site: <http://scanme.nmap.org>.
    -   **Remember to use `-oG` to save the file in a
        [grep](/Linux/commands/grep)able format**.

### TCP Scan

> Example:
>
> ``` shell
> nmap -sT 192.168.181.1
> ```
>
> For MySQL:
>
> ``` shell
> nmap -sT 192.168.181.1 -p 3306
> ```

### Fast Scan

-   **nmap -F**: Gives the list of the most targetable ports.
    -   By default, it scans only 100 ports.
-   **nmap –open**: Searches only for the open ports.

### Aggressive Scan

-   **nmap -A**: Looks for the operating system and other services.
-   **nmap -sV**: Gives you the version of the operating system. Useful
    to target
    [Exploits_metasploit](/Metasploit_Framework/Exploits_metasloit)
    for this system version.

## Nmap for Speed

-   **nmap -T (1-5)**: Sets the speed of the command.
-   **nmap -Pn**: Skips the pinging.

------------------------------------------------------------------------

### Related Posts

-   [Network Scanning](/for_later/Netwrok_Scanning)
-   [Port Scanning](/for_later/Port_Scanning)
-   [ifconfig](/Penetration/ifconfig)
-   [nslookup](/Linux/nslookup)

------------------------------------------------------------------------

