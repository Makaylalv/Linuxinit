#!/bin/bash

test_args(){
	for a in "$@" ;do
		echo $a
	done
}

echo "函数的参数:" 

test_args 1 2 3 4

echo "shell脚本的参数:"

for a in "$@" ; do
	echo $a
done
