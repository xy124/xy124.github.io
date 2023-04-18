---
layout: short_post
title: "Generate playlists"
description: "Recursively generate m3u files containing all music files of a directory"
category:
tags: m3u,recursively,music
---
Recursively generate m3u files containing all music files of a directory, which is an
especially useful thing to do for music libraries on smartphones without a
__folder__ __player__ (e.g. Blackberry, Android standard player!?)

execute in music dir:

```bash
prepath="$(pwd)/"
for sufpath in **/;
do
        echo processing $sufpath
        cd "$prepath$sufpath"
        dirname=${PWD##*/}
        ls | grep -i ".*\.\(mp3\|ogg\|m4a\|wma\)\$" > "$dirname.m3u"
done;
```


