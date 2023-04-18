---
layout: short_post
title: Vectorize photos
description: "Vectorize photos, e.g., for the creation of comic-style presentations"
category:
tags: vectorize,potrace,bmp
---

I used this technique to vectorize smartphone photos of hand-drawn pencil sketches to be
included in a presentation using comic sans typeset and xkcd style charts:

```bash
 convert -channel RGB -compress None input.jpg bmp:- | potrace -s - -o output.svg
 ```
