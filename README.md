# My Dotfiles
Based on @holman's [dotfiles](https://github.com/holman/dotfiles).

## Bootstrapping (Fresh Install)
Just clone and run the bootstrap script:

    $ git clone https://github.com/mpgeek/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ script/bootstrap

## Integrating existing config
@TODO

## Updating/Refreshing
Treat this as a build system and utilize the `dot` command. For example, add a brew package to `Brewfile`, then

    $ dot

This updates packages and refreshes the environment.
