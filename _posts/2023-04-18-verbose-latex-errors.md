---
layout: short_post
title: Verbose latex errors
description: "Activate verbose latex errors"
category:
tags: latex
refs:
  - https://tex.stackexchange.com/questions/324598/why-is-this-error-message-line-number-wrong
---

Activate more verbose latex errors:

```
   \errorcontextlines=200  %%%%% THIS IS THE IMPORTANT LINE
   \documentclass[12pt]{report}
   \usepackage[a4paper,widh=100mm,top=50mm]{geometry}
   \begin{document}
   test
   \end{document}
```
