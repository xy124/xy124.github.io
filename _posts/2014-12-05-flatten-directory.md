---
layout: short_post
title: "flatten directory"
description: ""
category:
tags: flatten,directory,bash,hard,link,present,pictures
refs:
 - http://unixhelp.ed.ac.uk/CGI/man-cgi?find
 - http://stackoverflow.com/questions/27621/unix-shell-file-copy-flattening-folder-structure
 - http://stackoverflow.com/questions/185899/what-is-the-difference-between-a-symbolic-link-and-a-hard-link
---
To flatten a unix directory structure (`indir`) one can use `find` with `-exec`-parameter:

```
$ find indir -iname '*.jpg' -exec cp {} outdir/ \;
```

`outdir` should not be inside of `indir` to avoid _recursion hell_.
If copying needs too much space generating hard links instead is a good idea:

```
$ find indir -iname '*.jpg' -exec ln '{}' outdir/ \;
```

This is especially useful when generating folders for photo slide shows.
