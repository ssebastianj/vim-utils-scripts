#!/usr/bin/env bash

# shellcheck shell=bash

# Prepare ViM repo

set -eu

REPO_DIR="$1"
cd "$REPO_DIR"

echo 'Cleaning repo...'
git clean -ff

echo 'Garbage collection...'
git gc

echo 'Reseting repo head...'
git reset --hard HEAD

echo 'Pulling changes from remote...'
git pull origin master

make -j2 clean
make -j2 distclean
