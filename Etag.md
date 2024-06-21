---
"date:": 2023-09-22
"type:": network+
---
## Entity tag

- Used for [cache](/nixos/cache.md) validation 
	When a client **request the same resource** it sends ==etag== back 
	- If the resource hasnt chnagded
	  the server tells the client to used the *cached version* 
	  - If changed happen the server sends a new version
### Types 

-  **Browser Cache**
	- When a browser accesses a web page, it stores copies of certain resources so it doesn't have to re-download them on subsequent visits. Etags help browsers determine if their cached version is still valid or if they need to fetch a fresh copy.
    
 **Proxy Cache**: This sits between the client (like a browser) and the server, saving responses. On subsequent requests for the same resource by any client passing through the proxy, the resource can be served from the cache if it's still fresh, reducing the load on the origin server and improving response times.
    
- **Content Delivery Network (CDN) Cache** 
 - CDNs are distributed systems that cache content closer to users. They use mechanisms like Etags to validate the freshness of cached resources.
    
 **Gateway Cache** 
 - Operates on web servers or in front of web servers, caching responses as they're generated for reuse, reducing the need to recompute dynamic pages.:
	- This sits between the client (like a browser) and the server, saving responses. On subsequent requests for the same resource by any client passing through the proxy, the resource can be served from the cache if it's still fresh, reducing the load on the origin server and improving response times.

- **Content Delivery Network** (==CDN==) Cache 
	- CDNs are distributed systems that cache content closer to users. They use mechanisms like Etags to validate the freshness of cached resources.

- **Gateway Cache**
	- Operates on web servers or in front of web servers, caching responses as they're generated for reuse, reducing the need to recompute dynamic pages.




>[!quote] [HTTPS](/HTTPS.md) [http_headers](/http_headers.md) [CORS](/CORS.md)