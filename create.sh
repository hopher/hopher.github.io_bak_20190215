#!/bin/bash
# 根据当前时间(年月)，创建post文件, $1 为文件名
# author: hopher

Ym=$(date +%Y%m)
hugo new posts/${Ym}/$1/index.md