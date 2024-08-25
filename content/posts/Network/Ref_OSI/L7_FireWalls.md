+++
title = 'Layer 7 Firewalls'
date = 2024-08-23T23:55:54+02:00
draft = false 
+++

### Unified threat menagment(UTM)
*Multiple layers of seciruty appliance*
[Article](https://www.fortinet.com/resources/cyberglossary/unified-threat-management)

### Next generation FireWalls (NGFW)
- Aware of what the app is doing 
    - Aware of headers 
- Cand adapt to various apps, users, devices 
    - Look for the `embrionic`connecitons(*half open*)

### Web Application Firewalls ([wafs]({{< ref "/posts/sysops_aws_cert/waf_aws.md" >}}))
[Docs AWS WAF ](https://aws.amazon.com/waf/)
- Are  aware of the `OWSAP` top 10 and prevent those attacks natively
- **Apploed by Cloud Providers** in front of diffrent applications 

  ---
  [Layer 7 Application]({{< ref "posts/Network/Ref_OSI/Application_OSI.md" >}})
