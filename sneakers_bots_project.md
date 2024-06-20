---
date:: 2023-08-29
type:: network+
---
# Guide 

## Architecture
Operating a sneaker bot requires several components:

- The bot itself
- A proxy server
- Proxy clients that provide IP addresses
The proxy server provides access to a large number of proxies, and can be used to parallelize the bot, running it multiple times against the same website.
[proxy](/obisdian_ntoes/notes_obsidian/Linux/Network manipulation/proxy.md)
The proxies give each instance of the bot a unique IP address. A bot uses multiple IP addresses to make it seem like multiple people are performing actions. For example, mass-entering into one online queue can increase the odds of actually making a purchase.

A proxy helps mask bots as multiple buyers. Otherwise, a targeted website can determine that all entries are from one source and ban the IP.

[[TODO]]
[bots_gtp_recomendations](/bots_gtp_recomendations.md)

>[!quote]