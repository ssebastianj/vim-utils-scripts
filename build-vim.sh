#!/usr/bin/env bash

# Compile Vim

set -e

echo "Cleaning repo..."
git clean -f
echo "Garbage collection..."
git gc
echo "Reseting repo head..."
git reset --hard HEAD
echo "Pulling changes from remote..."
git pull origin master

./configure --with-features=huge \
            --enable-fail-if-missing \
            --enable-multibyte \
            --enable-cscope \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-python3interp \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-rubyinterp\
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --enable-gui=auto \

make clean
sudo make install
