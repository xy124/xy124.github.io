---
layout: short_post
title: generic setenv
description: "useful snippet to set PATH, LD_LIBRARY_PATH ..."
category:
tags: configure make cmake
---
Imagine you just installed a package into `$PREFIX` via:
```bash
$ ./configure --prefix=$PREFIX
$ make install
```
To now execute the recently installed piece of software it would be cool to have a
generic environment environment setup script:
```bash
$ source generic-setenv.sh $PREFIX
```
And here it is `generic-setenv.sh` - to be put in your `$PATH`:
```bash
export PREFIX=$1
export PATH=$PREFIX/bin:$PATH
export LD_LIBRARY_PATH=$PREFIX/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$PREFIX/lib64:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
export PKG_CONFIG_PATH=$PREFIX/lib64/pkgconfig:$PKG_CONFIG_PATH
```
