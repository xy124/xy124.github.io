---
layout: short_post
title: inspect binary files
description: "Inspect binary files and libraries on Linux"
category:
tags: elf,binary
refs:
  - https://stackoverflow.com/questions/7967848/use-rpath-but-not-runpath
  - https://medium.com/obscure-system/rpath-vs-runpath-883029b17c45
---

Inspect binary files and libraries (.so files and so on):
```bash
- readelf -d <lib.so>
- strings <lib.so>
- nm -D <lib.so>
- nm -Ca <lib.so>
- ldd <lib.so>
```

- see man ld.so to see in which order things will be linked
- compile time information can be added using the -r flags!
