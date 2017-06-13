#!/usr/bin/env bash

# shellcheck shell=bash

# Compile Vim

set -eu

echo 'Cleaning repo...'
git clean -f
make distclean

echo 'Garbage collection...'
git gc

echo 'Reseting repo head...'
git reset --hard HEAD

echo 'Pulling changes from remote...'
git pull origin master

./configure --with-features=huge \
            --enable-fail-if-missing \
            --enable-multibyte \
            --enable-cscope \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7 \
            --enable-python3interp \
            --with-python3-config-dir=/usr/local/lib/python3.6 \
            --enable-rubyinterp \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --enable-gui=auto \

make -j2 clean
sudo make install
