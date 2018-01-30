#!/usr/bin/env bash

# Remome ViM packages

set -eu

echo 'Removing previously installed VIM packages...'

sudo apt remove --purge --yes vim vim-runtime gvim
sudo apt remove --purge --yes  vim-tiny vim-common vim-gui-common vim-nox vim-gnome
