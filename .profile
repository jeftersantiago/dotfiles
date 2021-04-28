#!/bin/sh

# default applications
export READER="xreader"
export BROWSER="firefox"
export VIEWER="mirage"

# language
#export LANG="fr_FR.UTF-8"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# important directories
export SCRIPTS=$HOME/".local/bin/"
export SC=$HOME"/.local/bin/"
export CONFIGS=$HOME"/.config/"


export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

# idk why this
export PATH=$PATH:/usr/bin/pdflatex
# makes my own scripts load as commands
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"

# somehow makes the sh shell works on login
test -f "$HOME"/.shrc && export ENV="$HOME"/.shrc

xmodmap ~/.Xmodmap

#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#  exec startx
#fi
