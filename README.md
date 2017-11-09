# My Dotfiles
Based on @holman's dotfiles (upstream README is [here](https://github.com/mpgeek/dotfiles/blob/master/README.upstream.md)).

## Bootstrapping (Fresh Install)
Just clone and run the bootstrap script:

    $ git clone https://github.com/mpgeek/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ script/bootstrap

## Updating/Refreshing
Treat this as a build system and utilize the `dot` command. For example, add a brew package to `Brewfile`, then 

    $ dot

This updates packages and refreshes the environment.
