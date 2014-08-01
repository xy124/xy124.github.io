---
layout: short_post
title: "Steps to create js-modules"
description: ""
category:
tags: productivity,github,js,grunt,gruntfile
refs:
  - http://gruntjs.com/getting-started
  - http://gruntjs.com/project-scaffolding
  - https://www.npmjs.org/doc/cli/npm-install.html
---




Steps to perform once
=====================
 * install `npm`
 * install `grunt-cli`

   ```
   sudo npm install -g grunt-cli
   ```

   which gives you the opportunity to run `Gruntfile.js`-files by typing `$ grunt`.
   Gruntfiles are a bit like makefiles for c/c++, ants for java or rakefiles for ruby...

 * install `grunt-init` to automate project initialization

   ```
   sudo npm install -g grunt-init
   ```

 * install some grunt templates

   ```
   git clone https://github.com/gruntjs/grunt-init-commonjs.git ~/.grunt-init/commonjs --depth 1
   git clone https://github.com/gruntjs/grunt-init-gruntfile.git ~/.grunt-init/gruntfile --depth 1
   ```



Steps to perform for every new module
=====================================
 * create a project-folder e.g. by cloning the new projects repo from [github][github].
   Then `cd` in this folder.
 * create the gruntfile - choose one of the following:

   * **simple gruntfile**:
     ```
     grunt-init gruntfile
     ```
   * **commonjs**:
     ```
     grunt-init commonjs
     ```

 * now let's install all used `grunt-modules` and add them to `package.json` as
   development dependencies

   (`--save-dev`)

   ```
   npm install grunt --save-dev
   ```



Now take a look in `package.json`, `Gruntfile.js` and `node_modules/`.
`package.json` stores information about the packages to install with `npm install` into `node_modules`.

`Gruntfile.js` is read when typing `grunt`.


[github]:https://github.com/
