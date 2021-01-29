#!/bin/sh
export READER="evince"
export LANG="fr_FR.UTF-8"
export SCRIPTS=$HOME/".local/bin/"
export SC=$HOME"/.local/bin/"
export CONFIGS=$HOME"/.config/"
export BROWSER="firefox"

export PATH=$PATH:/usr/bin/pdflatex
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"

test -f "$HOME"/.shrc && export ENV="$HOME"/.shrc
