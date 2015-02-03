#!/usr/bin/env bash
#
# Homebrew
#
# If we're on a Mac, let's install http://brew.sh and setup some of the common
# dependencies needed (or at least desired) for us.
#

if [ "$(uname -s)" != "Darwin" ]
then
  return
fi

# Check if we already have Homebrew installed
type -P brew &>/dev/null ||
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log

# Replace git with the brew version (always latest)
brew install git

# Install homebrew packages
brew install grc wget hub gist #coreutils spark

# Required ot use notify functions
brew install terminal-notifier 
