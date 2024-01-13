# Setup Git

Scripts for setting up git configuration, credentials & ssh-key on Linux or Unix-like (eg. MacOS) systems.

## Run Full Setup

Setup your config, credentials & ssh key in one go.

```cmd

chmod +x ./git-config-setup.sh 
chmod +x ./git-credentials-setup.sh
chmod +x ./git-ssh-setup.sh

./git-config-setup.sh
./git-credentials-setup.sh
./git-ssh-setup.sh

```

## Run Config Setup

This will setup your `.gitignore` & `.gitconfig` with great aliases (you can look up in `.gitconfig`).

```cmd

chmod +x ./git-config-setup.sh
./git-config-setup.sh

```

## Run Credentials Setup

This will setup your name & email globally for git

```cmd

chmod +x ./git-credentials-setup.sh
./git-credentials-setup.sh

```

## Run SSH key Setup

This will setup your `ssh-key`

```cmd

chmod +x ./git-ssh-setup.sh
./git-ssh-setup.sh

```
