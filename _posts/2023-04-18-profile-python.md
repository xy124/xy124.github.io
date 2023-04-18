---
layout: short_post
title: Profile Python
description: "Perform realtime profiling of python code"
category:
tags: python,profiling,realtime
---

Profiling Python apps (e.g., `app.py`)

```
pip3 install cProfile
sudo apt install pyprof2calltree
```
launch your code via:
```
python3 -m cProfile -o app.cprof app.py
```
```
pyprof2calltree -k -i app.cprof
```

Note that the latter will call kcachegrind. On old versions of kcachegrind the time unit is not given directly. It should be in the `Short` description
field of the event type and is nanoseconds on my device.
