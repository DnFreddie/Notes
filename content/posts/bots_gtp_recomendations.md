---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: Web scraping techniques
---

# Rate Limiting Strategies for Web Scraping

## Slow Down Requests

-   **Many simple bot detectors trigger based on the request rate.
    Slowing down your requests can sometimes help.**

### Techniques:

1.  **Randomized Intervals:** Instead of sending requests at a constant
    interval, randomize the times at which you send requests.

## Request Headers

-   **Customizing request headers can make bots less detectable.**

### Techniques:

1.  **User Agents:** Rotate user-agent strings to mimic different
    browsers and devices.
2.  **Referrers:** Use realistic referrer URLs.

## IPs and Networking

-   **Avoid detection by changing your network attributes.**

### Techniques:

1.  **IP Rotation:** Rotate through a list of proxy servers so that
    requests appear to come from multiple users.
2.  **Residential Proxies:** Use residential IPs instead of datacenter
    IPs as some websites block or limit datacenter IPs.

## Behavioral Mimicry

-   **Simulating human-like behavior can sometimes make bots harder to
    detect.**

### Techniques:

1.  **Human Behavior Simulation:** Adding random clicks, mouse
    movements, and scroll actions.
2.  **Sequential Page Navigation:** Access pages in a sequence that a
    human might follow.

## CAPTCHAs

-   **Some scraping activities might trigger CAPTCHAs, which are
    designed to distinguish bots from humans.**

### Techniques:

1.  **Manual Intervention:** For CAPTCHAs, some services allow for
    manual human intervention to solve them.
2.  **CAPTCHA Solving Services:** There are also automated services that
    claim to solve CAPTCHAs, though these are often against the terms of
    service of most websites.

## Cookies and Sessions

-   **Maintaining state between requests can also be useful.**

### Techniques:

1.  **Session Maintenance:** Keep track of cookies to maintain sessions,
    which can sometimes bypass security checks.
2.  **LocalStorage and JavaScript:** Some advanced scrapers maintain a
    JavaScript environment to mimic human interactions better.

## Request Timing

-   **Timing your requests can also play a role in avoiding detection.**

### Techniques:

1.  **Day Parting:** Some scrapers find success in only sending requests
    during specific hours

## Web Drivers

-   *Some scrapers use real browsers to simulate interactions more
    convincingly.*

### Techniques:

1.  **Real Browsers:** Use a real browser driver like Selenium or
    Puppeteer.

> **Disclaimer:** Remember that even if you’re not blocked by a website,
> your actions can still be illegal or against the terms of service of
> the website you’re interacting with. Always respect robots.txt and
> terms of service, and when in doubt, seek legal advice.

---

[Sneakers bots project](/Notes/posts/sneakers_bots_project)

