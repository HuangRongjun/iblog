#!/bin/bash

npm install hexo-cli -g

npm install

# npm-check检查更新
npm install -g npm-check
npm-check

# npm-upgrade更新
npm install -g npm-upgrade
npm-upgrade

hexo server