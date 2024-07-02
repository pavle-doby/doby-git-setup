#!/usr/bin/env bash

# Run this script
## chmod +x git-credentials-setup.sh
## git-credentials-setup.sh

fancy_echo() {
  local fmt="$1"; shift
  printf "\n$fmt\n" "$@"
}

fancy_echo "Git Credentials Setup..."

read -p "Enter your Frist and Last name for Git: " name
read -p "Enter your email: " email

git config --global user.name "$name"
git config --global user.email "$email"

fancy_echo "Git Credentials Setup - Done"
