#!/usr/bin/env bash

# Run this script
## chmod +x ./git-g-setup.sh
## ./git-g-setup.sh

fancy_echo() {
  local fmt="$1"; shift
  printf "\n$fmt\n" "$@"
}

fancy_echo "Git 'g' Alias Setup..."

cp ./.bash_aliases ~/.bash_aliases

# Snippet to source ~/.bash_aliases
BASH_ALIASES_SOURCE='
# Load git g aliases
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi'

# Add to ~/.bashrc if not already present
if [ -f ~/.bashrc ] && ! grep -q 'source ~/.bash_aliases' ~/.bashrc; then
  printf "%s\n" "$BASH_ALIASES_SOURCE" >> ~/.bashrc
  fancy_echo "Added .bash_aliases sourcing to ~/.bashrc"
fi

# Add to ~/.bash_profile if not already present
if [ -f ~/.bash_profile ] && ! grep -q 'source ~/.bash_aliases' ~/.bash_profile; then
  printf "%s\n" "$BASH_ALIASES_SOURCE" >> ~/.bash_profile
  fancy_echo "Added .bash_aliases sourcing to ~/.bash_profile"
fi

fancy_echo "Git 'g' Alias Setup - Done"
fancy_echo "Restart your terminal or run: source ~/.bash_aliases"
