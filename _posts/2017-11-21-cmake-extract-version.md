---
layout: post
title: "cmake extract version"
description: "This shows a way to set the version variables in cmake by parsing the version string"
category:
tags: cmake, version, regex, mpi
---
This shows a way to set the version variables in cmake by parsing the version string
```cmake
execute_process(COMMAND  mpirun --version OUTPUT_VARIABLE mpi_version_output)
STRING(REGEX REPLACE "^.+([0-9]+)\\.([0-9]+)\\.([0-9]+)(\n.*)*$" "\\1;\\2;\\3"
  RESULT ${mpi_version_output})

list(GET RESULT 0 MAJOR_VERSION)
list(GET RESULT 1 MINOR_VERSION)
list(GET RESULT 2 PATCH_VERSION)

message(${MAJOR_VERSION})
message(${MINOR_VERSION})
message(${PATCH_VERSION})
```
- copy version string into array string (`1.10.2` -> `1;10;2`)
- now we can access it with the list command
