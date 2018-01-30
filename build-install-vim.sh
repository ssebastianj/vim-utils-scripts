#!/usr/bin/env bash

# shellcheck shell=bash

# Build ViM package and install it

set -eu

REPO_DIR="$1"
cd "$REPO_DIR"

sudo checkinstall \
  --maintainer='ssebastianj[at]gmail.com' \
  --deldoc=yes \
  --deldesc=yes \
  --delspec=yes

