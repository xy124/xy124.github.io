---
layout: short_post
title: "disable selinux"
description: ""
category:
tags: selinux,disable
refs:
  - http://www.cyberciti.biz/tips/enable-permissive-mode-for-selinux-troubleshooting-purpose.html  
  - https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Security-Enhanced_Linux/sect-Security-Enhanced_Linux-Working_with_SELinux-Enabling_and_Disabling_SELinux.html
---
to disable:

`$ sudo setenforce 0`

to get state:

`$ getenforce`
