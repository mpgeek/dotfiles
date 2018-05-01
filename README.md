# My Dotfiles
Based on @holman's [dotfiles](https://github.com/holman/dotfiles).

Most folders in this repository are "topics" that group together tools and config by topic; `node`, `ruby`, `git`, `docker`, etc are all grouped together in a folder.

## Bootstrapping (Fresh Install)
Just clone and run the bootstrap script:

    $ git clone https://github.com/mpgeek/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ script/bootstrap

### Preflight
Before installing, you'll want to do some preflight checks to eliminate clutter.

#### Bin scripts
Cleaning up the `bin` folder. Any custom scripts that you use should be copied into this directory. The path is updated when you bootstrap so you'll be able to find your scripts from anywhere.

#### Brewfile
This is the list of homebrew packages to install. Keep this updated, but remove stuff you don't need first.

#### Topics (ZSH)
This repository is built around a ZSH environment. The following files inside each one have meaning:

**topic/\*.zsh** All ZSH files will be loaded into your environment.

**topic/path.zsh** Any file named `path.zsh` should only add to your path for that topic.

**topic/completion.zsh** Any file named `completion.zsh` should only configure autocomplete for that topic.

**topic/install.sh** Any file named `install.sh` is executed when you run `script/install`. To avoid being loaded into your environment automatically, the the extension is `.sh` and not `.zsh`.

**topic/\*.symlink** Any file ending in `*.symlink` will be symlinked onto your `$HOME` when your run `script/bootstrap`. From `FILENAME.symlink` you get a link in your home directory, i.e. `$HOME/.FILENAME` that points to the `*.symlink` file.

## Updating/Refreshing
Treat this as a build system and utilize the `dot` command. For example, add a brew package to `Brewfile`, then

    $ dot

This updates packages and refreshes the environment.
