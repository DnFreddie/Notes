---
date: "2024-07-22T09:10:24+02:00"
draft: false
title: SSD
---

### Solid-State Drive (SSD)

## \[\[Block_dev\|Block Devices\]\] Limitations

-   Data can be read only on **empty** \[\[Block_dev#page\|pages\]\].
-   *Erasing* can only be done at the \[\[Block_dev\|block level\]\].

### Trimming

TRIM is a command that allows the operating system to inform the
solid-state drive ({{\< ref “posts/SSD.md” \>}}) which data blocks are
no longer needed and can be deleted or marked as free for rewriting. -
Instead of deleting whole blocks of memory, TRIM enables deletion at the
\[\[Block_dev#page\|page level\]\]. - Whenever a delete command is
issued by the operating system or the user, the [SSD](/SSD)
automatically sends a TRIM command to wipe the storage space being
erased.

> \[!tip\] To enable it permanently, modify ***/etc/fstab*** and add the
> **discard option**.
> ![Pasted_image_20240511151618.png](/static/Pasted_image_20240511151618.png)

-   **To run it manually:**

    ``` bash
    sudo fstrim -v
    ```

[Docs](https://www.baeldung.com/linux/trim-ssd#2-modifying-theetcfstab-file)

\[j\[\[Automatic Mounting fstab\|fstab\]\]\]

#### Benefits

-   Prevents rapid wear of the flash memory chips inside the
    [SSD](/SSD).
-   Faster reading and writing speeds.

------------------------------------------------------------------------

[NVMe](/NVMe)
