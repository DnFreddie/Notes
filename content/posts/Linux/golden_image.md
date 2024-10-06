+++
title = 'Golden image'
date = 2024-10-05T20:12:00+02:00
draft = false
+++

*System that we use to deploy all other system from*
- Harden to the seciurity standards (`GRC` (*Governance, Risk, and Compliance*) )
- All defualt accounts either **disabled or remved** if not used
    - All defautl passwords changed 
- Seciurity benchmarks (**CIS STIG OpenSCAP**)
- Softwere
    - Updated/Patched 
    - Only there if needed 
    - Only running if needed
- `HIDS`(*Host intrusion detection system*)
    - [Aws HIDS Aritcle ](https://aws.amazon.com/blogs/security/how-to-monitor-host-based-intrusion-detection-system-alerts-on-amazon-ec2-instances/)
    - Tripwire
    - Fail2ban
- Good Loging system 
    - Loki 
    - Syslog running 
- Host level firewals 
- **Connection cannot happen by root**


