---
layout: short_post
title: Python unbuffered
description: "Pythons stdout/stderr is buffered by default leading to weird behavior when massively parallel"
category:
tags: python
---
Pythons stdout/stderr are buffered by default, leading to weird behavior, especially when running massively parallel.
Running with `python -u` to activates unbuffered stdout/stderr and therefore helps finding all kinds of strange bugs in such environments.
