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

./configure --with-features=huge --enable-multibyte --enable-cscope --enable-rubyinterp=dynamic --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-perlinterp=dynamic --enable-luainterp --with-luajit --enable-fail-if-missing --enable-gui=auto 

make clean
sudo make install

sudo update-alternatives --install /usr/bin/editor editor $(which vim) 1
sudo update-alternatives --set editor $(which vim)
sudo update-alternatives --install /usr/bin/vi vi $(which vim) 1
sudo update-alternatives --set vi $(which vim)
