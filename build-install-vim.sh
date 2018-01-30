#!/usr/bin/env bash

# shellcheck shell=bash

# Build ViM package and install it

set -eu

REPO_DIR="$1"
cd "$REPO_DIR"

VIM_TAG="$(git describe --tags --abbrev=0 | cut -dv -f2 | sed 's/^ *//g' | sed 's/ *$//g')"
PKG_EPOCH='2:'
PKG_VERSION="$PKG_EPOCH$VIM_TAG"

sudo checkinstall \
  --default \
  --pkgname=vim \
  --pkgversion="$PKG_VERSION" \
  --pkggroup=editors \
  --provides=editor \
  --maintainer='ssebastianj[at]gmail.com' \
  --gzman \
  --install=yes \
  --showinstall=no

