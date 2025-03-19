---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: LVM
---

> Best Way to combine storage
> ![Pasted_image_20240427140250.png](/static/Pasted_image_20240427140250.png)

> \[!bug\] It does not offer data protection If one drive fails the
> other fail too

Accts like a one block devie


>U can easily both shrink/extend fs and lvvm with `--resizefs`

```bash 
lvresize --resizefs -L +5G /dev/test/lv-data
``` 

### Commands

-   **pv**(*create* *display* *change*)
   **vg**(*create*)
-   **lv**(*create*) ### Alternatives are the Raid devices
-   ![Raid devices](/static/raid_devices_canvas.png "fig:")



