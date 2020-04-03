#!/bin/bash

# test的等效形式【】[[]]

if [ -d "xyz" ]; then
	echo "xyz exists"
else
	echo "xyz not exists or not a dir"
fi

#等效下边的代码

