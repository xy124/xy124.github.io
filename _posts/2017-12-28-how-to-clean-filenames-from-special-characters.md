---
layout: post
title: "How to clean filenames from special characters"
description: ""
category:
tags: [bash mp3]
refs:
 - https://unix.stackexchange.com/questions/216659/how-to-rename-all-files-with-special-characters-and-spaces-in-a-directory
---
I use this script (`toWindowsFilename.sh`) to clean my mp3 filenames:

```bash
#!/bin/bash
# usage: toWindowsFilename.sh '*.mp3' for dryrun
# usage: toWindowsFilename.sh --no-dry '*.mp3' for real rename.
DRY=1
if [ "$1" = "--no-dry" ];
then
  DRY=0
  input=$2
else
  input=$1
fi

for f in $input;
do
  new_name="$f"

  re[1]=" /_"
  re[2]="ä/ae"
  re[3]="ö/oe"
  re[4]="ü/ue"
  re[5]="Ä/AE"
  re[6]="Ö/OE"
  re[7]="Ü/UE"
  re[8]="ß/ss"

  # convert special chars
  i=1
  while [ "$i" -le "${#re[@]}" ];
  do
    new_name=`echo "$new_name" | sed -e"s/${re[i]}/g"`
    i=$((i+1))
  done

  # strip lasting special chars
  new_name=`echo "$new_name" | tr -cd '.A-Za-z0-9_-'`

  echo $new_name
  if [ "$DRY" == "0" ];
  then
    mv "$f" $new_name
  fi
done
```

To run it in the current directory on all mp3 files:
```bash
toWindowsFilename.sh --no-dry '*.mp3'
```
