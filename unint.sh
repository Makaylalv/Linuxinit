#!/bin/bash

#不涉及sudo的操作

#通过变量保存当前脚本所在的目录
SELFDIR=$(dirname "$0")

#切换到脚本所在的目录
cd "$SELFDIR"

#初始化vim配置 
echo '配置vim'
cp -R HOME_vim  ~/.vim

cp vimrc ~/.vimrc


#复制bash配置
echo '更新bash配置文件'
cp profile  ~/.profile
cp bashrc  ~/.bashrc

#并没有进行自动让bash配置文件生效的操作
#取消以下两行注释
#初始化nano配置，自动
echo '初始化nano配置。。。'
cp nanorc  ~/.nanorc

#创建目录
echo '创建相关目录...'
DIRLIST="bin c sh tmp"
for d in $DIRLIST ; do
    if [ ! -d "$d" ] ; then
        mkdir "$d"
    fi
done

#如果主目录存在mysh目录，则复制其中的内容到mysh
#否则复制整个mysh目录到主目录
cd $SELFDIR
if [ -d "$HOME/mysh" ]; then
    cp -R mysh/* $HOME/mysh/
else
    cp -R mysh $HOME/
fi

