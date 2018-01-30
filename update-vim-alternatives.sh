#!/usr/bin/env bash

set -eu

echo 'Updating VIM alternatives...'

sudo update-alternatives --install /usr/bin/editor editor "$(which vim)" 1
sudo update-alternatives --set editor "$(which vim)"
sudo update-alternatives --install /usr/bin/vi vi "$(which vim)" 1
sudo update-alternatives --set vi "$(which vim)"
