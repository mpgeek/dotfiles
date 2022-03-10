#!/usr/bin/env bash

## --------------------------------------------------------------------------------
## Homebrew
## --------------------------------------------------------------------------------

## @TODO: move this to an env var file.
export DOTFILES=$HOME/.dotfiles
source $DOTFILES/common.sh

##
## Install or update Homebrew.
##

which -s brew
if [[ $? != 0 ]] ; then
  echo ">> Installing Homebrew ..."
  echo_run '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'

else
  echo ">> Homebrew already installed. Updating ..."
  echo_run 'brew update'
  echo_run 'brew upgrade'

fi

##
## Install packages.
##

echo_run 'brew tap homebrew/bundle'
echo_run "brew bundle --file $DOTFILES/homebrew/Brewfile"

## Python
echo_run "pyenv global 3.10.2"
echo_run "python3 -m pip install --upgrade pip"
echo_run "pip3 install -r $DOTFILES/homebrew/pip-reqs.txt"

