---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: next-js
---

## Startup

to start a project in next js type

    npx create-next-app@latest --ts .

**npm run dev** on http://localhost:3000 ## Server/client \[\[server
base rendering\]\] ## Pages

-   In order to create a new page u have to make a *new folder* and
    inside of it add *page.tsx*
    -   [Next-jsPages_visual.png](/Next-jsPages_visual.png)
-   Pages can be *nested* by sipmly adding new folder to the aleready
    existihng one
    -   **Dynamic routes** are created by enclosing the folder name with
        *\[ \]*
        [Next-JSRoutingFolders_visual.png](/Next-JSRoutingFolders_visual.png)

## Layouts

-   Lyaouts are like temaplates in [Flask
    MAIN](/Notes/posts/Flask_startup/Flask_MAIN) They are for
    *cross-section pages *
    -   U can define multple layouts just by adding *layout.js to the
        subfolder*

## Loadigs

-   U can add *loading.js* file
    -   U will reneder a *Loading Skeleton*
        ![Next-JsLoaingSkeleton_visual.png](/Notes/Next-JsLoaingSkeleton_visual.png)

## Error Handling

-   To handle errors create *error.js file* in sub directory
    -   This wiil present the error acordingly to the user
        ![Next-JsErrorHandling_visual.png](/Notes/Next-JsErrorHandling_visual.png)

> \[!quote\] [React](/Notes/posts/next-js/Reactjs/React)\|\|[Flask
> MAIN](/Notes/posts/Flask_startup/Flask_MAIN)\|\|

> \[!tip\]- resources [nex-js
> guide](https://www.youtube.com/watch?v:%20wm5gMKuwSYk)
