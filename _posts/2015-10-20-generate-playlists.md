---
layout: short_post
title: "generate playlists"
description: "recursively generate m3u files containing all music files of a directory"
category:
tags: m3u,recursively,music
---
recursively generate m3u files containing all music files of a directory, which is an
especially useful thing to do for music libraries on smartphones without a
''folder player'' (e.g. Blackberry, Android standard player!?)

execute in music dir:

```
prepath="$(pwd)/"

for sufpath in **/;

do

        echo processing $sufpath

        cd "$prepath$sufpath"

        dirname=${PWD##*/}

        ls | grep -i ".*\.\(mp3\|ogg\|m4a\|wma\)\$" > "$dirname.m3u"

done;
```


