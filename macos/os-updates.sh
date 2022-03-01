#!/usr/bin/env bash

source $HOME/.dotfiles/common.sh

echo_run    'softwareupdate --list'
confirm_run 'softwareupdate --install --all'
