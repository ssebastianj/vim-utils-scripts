#!/usr/bin/env bash

# shellcheck shell=bash

# Build ViM package and install it

set -eu

REPO_DIR="$1"
cd "$REPO_DIR"

sudo checkinstall \
  --default \
  --pkgname=vim \
  --pkgversion='2:8.0.build' \
  --pkggroup=editors \
  --provides=editor \
  --maintainer='ssebastianj[at]gmail.com' \
  --gzman \
  --showinstall=no \

