---
layout: short_post
title: "Gnuplot timestamps and the 30 year offset"
description: ""
category:
tags: latex,paragraph
refs:
  - http://stackoverflow.com/questions/7810352/plotting-date-time-data-points-and-functions-in-the-same-graph
---

#Problem
* You want to plot time data via gnuplot.
* Your time data comes as unix timestamp.
* You correctly set your time axis: `set xdata time` and `timefmt "%s"`.

* And you want to draw a fit function you fitted for your data into your plot:
  `plot "t-np.dat", f(x)`

* You might have noticed that your correctly fitted f(x) misses your data by
  some orders of magnitude.

#Why?
Your data is in unix timestamp, i.e. seconds since 1 Jan 1970 00:00:00. This
is '''not''' the timestamp gnuplot uses, gnuplot uses seconds since 1 Jan 1970
00:00:00. So your data misses your fit by 30 years, or 946684800 seconds.

#Solution
Add 946684800 seconds to the x of your fit. This one worked for me (with real
[data][data] and real fit):

```
a0  = 375005180.76546
a1  = -0.536944002039169
a2  = 1.92203500769925e-10

f(x) = a0+a1*x+a2*x*x
set xdata time
set timefmt "%s"
set format x "%s"

plot "t-np.dat" u 1:2 pt 7 lc 0, f(x+946684800) ls 1
```

(via schaf)

[data]:http://nopaste.info/c414cacbd4.html
