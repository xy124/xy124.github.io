---
layout: short_post
title: "Adding 'extern' libs to python search path"
description: ""
category:
tags: python,lib,path
refs:
  - https://docs.python.org/2/tutorial/modules.html
---

Assuming the `myLib.py` is in `/path/to/myLib/` one can either

* `PYTHONPATH=$PYTHONPATH:/path/to/myLib`

or

* create a `/lib/python/site-packages/myLib.pth` containing:

```
/path/to/myLib
```
