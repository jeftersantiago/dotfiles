#!/bin/sh

# default applications
export READER="okular"
export BROWSER="tor-browser"
export VIEWER="mirage"

# language
export LANG="fr_FR.UTF-8"

# important directories
export SCRIPTS=$HOME/".local/bin/"
export SC=$HOME"/.local/bin/"
export CONFIGS=$HOME"/.config/"

# idk why this
export PATH=$PATH:/usr/bin/pdflatex
# makes my own scripts load as commands
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"

# somehow makes the sh shell works on login
test -f "$HOME"/.shrc && export ENV="$HOME"/.shrc
