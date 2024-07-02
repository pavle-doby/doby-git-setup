#!/usr/bin/env bash

# Run this script
## chmod +x ./git-config-setup.sh
## ./git-config-setup.sh

fancy_echo() {
  local fmt="$1"; shift
  printf "\n$fmt\n" "$@"
}

fancy_echo "Git Config Setup..."

sudo cp ./.gitignore ~/.gitignore
sudo cp ./.gitconfig ~/.gitconfig
git config --global core.excludesfile ~/.gitignore

fancy_echo "Git Config Setup - Done"
