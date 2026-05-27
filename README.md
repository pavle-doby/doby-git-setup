# Setup Git

Scripts for setting up git `configuration`, `credentials`, `ssh-key` & `g alias` on Linux or Unix-like (eg. MacOS) systems.

## Prerequisites

1. Make sure you have `git` installed on your system.
2. Clone this repository => `git clone https://github.com/pavle-doby/doby-git-setup.git`
3. Go to the cloned directory => `cd doby-git-setup`

## Run Full Setup

Setup your config, ignore, g alias, credentials & ssh key in one go.

```cmd

chmod +x ./git-config-setup.sh
chmod +x ./git-ignore-setup.sh
chmod +x ./git-g-setup.sh
chmod +x ./git-credentials-setup.sh
chmod +x ./git-ssh-setup.sh

./git-config-setup.sh
./git-ignore-setup.sh
./git-g-setup.sh
./git-credentials-setup.sh
./git-ssh-setup.sh

```

## Run Config Setup

Use this when setting up a new machine to install your global `.gitconfig` with great aliases.

**eg. aliases will let you write** <br>

this `g aa` instead of this `git add -A` <br>
this `g s` instead of this `git status` <br>
this `g cm` instead of this `git commit -m` <br>
this `g u` instead of this `git push` <br>
and many more shortcuts that you can see in `.gitconfig` <br>

```cmd

chmod +x ./git-config-setup.sh
./git-config-setup.sh

```

## Run Ignore Setup

Use this when you want to apply a global `.gitignore` so common files (OS artifacts, editor files, etc.) are never accidentally committed across all your repositories.

```cmd

chmod +x ./git-ignore-setup.sh
./git-ignore-setup.sh

```

## Run `g` Alias Setup

Use this when you want to type `g` instead of `git` in the terminal. Copies `.bash_aliases` to `~/.bash_aliases` and sources it from your bash config files.

```cmd

chmod +x ./git-g-setup.sh
./git-g-setup.sh

```

After running, restart your terminal or run:

```cmd
source ~/.bash_aliases
```

## Run Credentials Setup

Use this when setting up a new machine to store your git name & email globally.

```cmd

chmod +x ./git-credentials-setup.sh
./git-credentials-setup.sh

```

## Run SSH key Setup

Use this when setting up a new machine or generating a new SSH key to authenticate with GitHub/GitLab without a password.

```cmd

chmod +x ./git-ssh-setup.sh
./git-ssh-setup.sh

```
