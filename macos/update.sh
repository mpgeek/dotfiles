#!/usr/bin/env bash

if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# The Brewfile handles Homebrew-based app and library installs, but there may
# still be updates and installables in the Mac App Store, update them.

CMD="sudo softwareupdate -i -a"
echo "++ $CMD"
eval $CMD
