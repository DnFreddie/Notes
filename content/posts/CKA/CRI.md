---
title: 'CRI'
date : 2024-11-29T09:45:00+01:00
draft: false
---
*The way [kublet](#) interacts with the `container runtimes`*
* It communicates via 2 services using  `gRPC` 
    * **RuntimeService**
        * Menages the lifecycle of [podman](/Notes/posts/podman) and continers
        * Handles actions like creating, starting, stopping, and deleting containers.
    * **ImageService**
        * Manages container images.
        * Handles actions like pulling, listing, and removing images.
