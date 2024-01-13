#!/usr/bin/env bash

fancy_echo() {
  local fmt="$1"; shift
  printf "\n$fmt\n" "$@"
}

fancy_echo "Git Setup..."

read -p "Enter your Frist and Last name for Git: " name
read -p "Enter your email to generate ssh key: " email

git config --global user.name "$name"
git config --global user.email "$email"

fancy_echo "Generating SSH key"
ssh-keygen -t ed25519 -q -N "" -C "$email"
eval "$(ssh-agent -s)"
cp ./config ~/.ssh/config
ssh-add -K ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

fancy_echo "Key coppied (I hope), paste it in GitHub"
pbcopy < ~/.ssh/id_ed25519.pub