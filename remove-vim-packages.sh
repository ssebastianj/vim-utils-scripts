#!/usr/bin/env bash

# Remome ViM packages

set -eux

echo 'Removing previously installed VIM packages...'

sudo dpkg --remove vim
sudo apt-get remove --purge --yes vim vim-runtime gvim
sudo apt-get remove --purge --yes  vim-tiny vim-common vim-gui-common vim-nox vim-gnome
