#!/bin/bash

BDIR="./xyz"

#检测当前目录下的BDIR 变量所表示的目录是不是存在，不存在则创建
if test -d "$BDIR";then
	echo "$BDIR exists and it is a dir"
else
	echo "mkdir $BDIR"
	mkdir "$BDIR"
fi

