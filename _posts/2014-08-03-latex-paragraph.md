---
layout: short_post
title: "Make LaTeX \paragraph behave like a paragraph"
description: ""
category:
tags: latex,paragraph
refs:
  - http://stackoverflow.com/questions/3119814/using-parindent-and-parskip-with-paragraph-has-no-effect
---
Since the LaTeX command `\paragraph{}` doesn't start a paragraph but a
subsubsubsection environment, I spent hours in debugging the spacings of my
`\paragraph`s.

So I redefined the command to just look like the `\paragraph` command but
acting like a paragraph:

`\renewcommand{\paragraph}[1]{\par\noindent\textbf{\textsf{#1}}\hspace{\parindent}}`

Written at the beginning of a paragraph, this will insert a bold non-serif
text in front of the indentation.

(via schaf)
