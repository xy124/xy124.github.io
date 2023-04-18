---
layout: short_post
title: LaTeX continuous building
description: "LaTeX continuous building"
category:
tags: latex
---
Working on LaTeX documents while continuously rebuilding in the background on changes and
displaying can be done using `latexmk`:

```bash
latexmk -pvc main.tex
```
