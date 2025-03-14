---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: css position
---

## CSS positioning

-   Static
    -   The default position one by one
        ![StaticCssPosition_visual.png](/static/StaticCssPosition_visual.png)
-   Relative
    -   U can change top bot left and right of this element
    -   It take it ==out of document flow== and position it those
        speechified pixels
        -   It has no influence one the other elements potions
            ![RelativePostiosnExample_visual.png](/static/RelativePostiosnExample_visual.png)
-   Absolute
    -   Completly removes element from the document flow (*its postion
        from the top not relative to any element*)
        -   **Everything renders as the element does not exits**
        -   ![AbsolutePostionExmple_visual.png](/static/AbsolutePostionExmple_visual.png "fig:")
-   Fixed
    -   The are positon based on the hole html and they stay while
        scrolling
        ![FixedPositonExample_visual.png](/static/FixedPositonExample_visual.png)
-   Sticky
    -   It’s relative unless it *leaves the page* then it becomes
        **fixed**

> \[!quote\] \[\[canvas_html\]\]
