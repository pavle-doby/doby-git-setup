#!/usr/bin/env bash

##########################################################
# Run this script
##########################################################
## chmod +x ./git-config-setup.sh
## ./git-config-setup.sh
##########################################################
# Description
##########################################################
## Copies .gitconfig to the home directory 
## to apply global Git configuration settings.
##########################################################

fancy_echo() {
  local fmt="$1"; shift
  printf "\n$fmt\n" "$@"
}

fancy_echo "Git Config Setup..."

sudo cp ./.gitconfig ~/.gitconfig

fancy_echo "Git Config Setup - Done"
