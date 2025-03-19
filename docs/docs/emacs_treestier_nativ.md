---
date: "2024-10-03T21:18:34+02:00"
draft: false
title: Native treesiter in emacs
---

[Docs](https://www.masteringemacs.org/article/speed-up-emacs-libjansson-native-elisp-compilation)

In order to naitvly complie wiht the json parse and treesiter

1.  Install the latest verison of the Emacs

``` bash
git clone https://git.savannah.gnu.org/git/emacs.git
```

2.  Chose compilation otpions

``` bash
cd emacs
./autogen.sh
./configure --without-compress-install --with-native-compilation --with-json --with-tree-sitter 
```
