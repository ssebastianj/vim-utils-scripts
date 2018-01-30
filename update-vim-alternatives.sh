#!/usr/bin/env bash

set -eux

echo 'Updating VIM alternatives...'

update-alternatives --install /usr/bin/editor editor "$(which vim)" 1
update-alternatives --set editor "$(which vim)"
update-alternatives --install /usr/bin/vi vi "$(which vim)" 1
update-alternatives --set vi "$(which vim)"
