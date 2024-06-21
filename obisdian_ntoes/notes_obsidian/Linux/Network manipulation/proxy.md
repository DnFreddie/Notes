---
date:: 02 04 2023
topic:: proxy-ip-stealth
type:: network+
---
## Proxies 
To confighure proxies use **etc/proxychains.conf**
>[!example]
>- If you’re not adding your own proxies and want to use Tor, leave this as it is. If you are not using Tor, you’ll need to comment out this line
![ProxyList_visual.png](/static/ProxyList_visual.png)

<mark style="background: #FF5582A6;">To make it hapen u have to type **proxychains browser domain**</mark>
### Random chainging 
In order to change the proxy server randomly u have to set *chain* to the **dynamic chain**
adn specyfie the *len* of the **chain**
>[!example]-
>![DynamicChainn_visual.png](/static/DynamicChainn_visual.png)

## Proxy Types

- **Datacenter/ISP**
	1. Quick 
	2. Based on quantity 
	3. Expensive
	4. Recognized by bot protection
- Residential 
	1. Slower
	2. High quantity 
	3. based on data plan



>[!quote] [traceroute](/obisdian_ntoes/notes_obsidian/Linux/Network manipulation/traceroute.md) [ping_command](/ping_command.md) [sneakers_bots_project](/sneakers_bots_project.md)