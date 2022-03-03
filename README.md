# Mac setup

This repo contains a process and tooling for setting up my Mac-based working machine for devops.

## Pre-Requisites

A few things need to be installed manually.

### iTerm2

Find it on the [website](https://iterm2.com/), move it to `Applications`.

### XCode

This install was probalby initiated when installing iTerm2. If not use this:

    xcode-select --install

## Mac OS

Set OS and mac-related config:

    $ ./macos/set-defaults.sh

Get macos updates.

    $ ./macos/os-update.sh

## Homebrew

Install and upate packages:

    $ ./homebrew/brew.sh

This also works on fresh install. Follow the prompts to get `brew` working initially, then move the dotfiles to `stow`.

## Package Install with Stow

@TODO