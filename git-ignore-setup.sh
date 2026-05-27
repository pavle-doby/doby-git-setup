#!/usr/bin/env bash

##########################################################
# Run this script
##########################################################
## chmod +x ./git-ignore-setup.sh
## ./git-ignore-setup.sh
##########################################################
# Description
##########################################################
## Copies .gitignore to the home directory 
## and sets it as the global Git ignore file.
##########################################################

fancy_echo() {
  local fmt="$1"; shift
  printf "\n$fmt\n" "$@"
}

fancy_echo "Git Ignore Setup..."

sudo cp ./.gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore

fancy_echo "Git Ignore Setup - Done"
