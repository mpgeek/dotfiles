#!/usr/bin/env bash

## --------------------------------------------------------------------------------
## Sets reasonable macOS defaults.
##
## For a really-complete implmentation, @see
##   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
## --------------------------------------------------------------------------------

## --------------------------------------------------------------------------------
## Hardware
## --------------------------------------------------------------------------------

## Disable press-and-hold for keys in favor of key repeat.
#defaults write -g ApplePressAndHoldEnabled -bool false

## --------------------------------------------------------------------------------
## Finder
## --------------------------------------------------------------------------------

## Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

## Show the ~/Library folder.
#chflags nohidden ~/Library

## --------------------------------------------------------------------------------
## Dock, Dashboard, Hot Corners
## --------------------------------------------------------------------------------

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center

## Screeensaver
defaults write com.apple.dock wvous-tl-corner -int 5
defaults write com.apple.dock wvous-tl-modifier -int 0

## --------------------------------------------------------------------------------
## Safari
## --------------------------------------------------------------------------------

## Hide Safari's bookmark bar.
#defaults write com.apple.Safari ShowFavoritesBar -bool false

## Set up Safari for development.
#defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
#defaults write com.apple.Safari IncludeDevelopMenu -bool true
#defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
#defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
#defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
