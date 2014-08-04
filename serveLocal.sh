#!/bin/sh

wget -O javascripts/easteregg.min.js https://raw.githubusercontent.com/xy124/easteregg.js/master/dist/easteregg.min.js

bundle exec jekyll serve --watch --drafts

