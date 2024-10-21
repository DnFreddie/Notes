---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: nix
---

### To get rid of the not required geneterations

``` bash
sudo nix-collect-garbage -d
```

-   To list them use

``` bash
sudo nix-rebuild list-generations
```

## Nix flakes

-   Packages
    -   its the source code of your app
-   dev-shell
    -   Its u’r environment
-   Apps
    -   it tells nix what to run and when (*similarly to the
        containers*)

Git respect history of git so it will not find itself if it hasn’t been
added

-   to run the developer environment type **nix develop**

-   nix shell nixpkgs#google-chromkjjke

-   nix build .#dockerImages.x86_64-linux.default

-   docker load -i ./result

## Upadte the flake.lock

``` bash
nix flake update
```

> \[!quote\] [nix Templates](/Notes/posts/code_snippets/nix_Templates)
