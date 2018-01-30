#!/usr/bin/env bash

# shellcheck shell=bash

# Compile Vim

set -eu

REPO_DIR="$1"
cd "$REPO_DIR"

./configure --with-features=huge \
            --enable-fail-if-missing \
            --with-compiledby='ssebastianj[at]gmail.com' \
            --enable-multibyte \
            --enable-cscope \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-python3interp \
            --with-python3-config-dir=/usr/lib/python3.5/config-3.5m-x86_64-linux-gnu \
            --enable-rubyinterp \
            --with-ruby-command=/usr/bin/ruby \
            --enable-perlinterp \
            --enable-luainterp \
            --with-luajit \
            --enable-gui=auto \

