#!/usr/bin/env bash

# shellcheck shell=bash

# Build and install customized ViM

set -eu

START_DIR="$(pwd)"
REPO_DIR="${1}"
echo  "Working directory: ${REPO_DIR}"

# Remove ViM packages
./remove-vim-packages.sh

# Prepare ViM repo
./prepare-vim-repo.sh "${REPO_DIR}"
cd "${START_DIR}"

# Configure ViM
./configure-vim.sh "${REPO_DIR}"
cd "${START_DIR}"

# Build ViM package and install it
./build-install-vim.sh "${REPO_DIR}"
cd "${START_DIR}"

# Update alternatives
./update-vim-alternatives.sh
