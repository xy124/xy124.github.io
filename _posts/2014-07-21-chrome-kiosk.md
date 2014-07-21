---
layout: short_post
title: "chrome kiosk"
description: ""
category:
tags: origin,kiosk,chrome
---
chrome kioskmode with no same origin policy
(e.g. allows loading files through xss from hdd)

`$ chrome -kiosk -allow-file-access-from-files www.google.de`

allow even more cross origin with:  `-disable-web-security`
