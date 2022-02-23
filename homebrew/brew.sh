#!/usr/bin/env bash

## --------------------------------------------------------------------------------
## Homebrew
## --------------------------------------------------------------------------------

## @TODO: move this to an env var file.
export DOTFILES=$HOME/.dotfiles
export LIBPATH=$DOTFILES/_lib

## Include common functions.
source $LIBPATH/functions.sh

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

brew tap homebrew/bundle
brew bundle --file $DOTFILES/Brewfile

