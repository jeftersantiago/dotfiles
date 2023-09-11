#!/bin/sh
# default applications
export READER="xreader"
export BROWSER="brave"
export VIEWER="mirage"
export TERMINAL="st"
export EDITOR="emacsclient -c -a emacs"

#export LANG="fr_FR.UTF-8"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

setxkbmap br

# important directories
export SCRIPTS=$HOME/".dotfiles/.local/bin/"
export SC=$HOME"/.dotfiles/.local/bin/"
export CONFIGS=$HOME"/.dotfiles/.config/"
export PATH="$PATH:$GEM_HOME/bin/"

# idk why this
export PATH=$PATH:/usr/bin/pdflatex

# makes my own scripts load as commands
export PATH="$PATH:$(du "$HOME/.dotfiles/.local/bin/" | cut -f2 | paste -sd ':')"
export PATH="$PATH:$(du "$HOME/Dropbox/private-configs/" | cut -f2 | paste -sd ':')"


# somehow makes the sh shell works on login

test -f "$HOME"/.shrc && export ENV="$HOME"/.shrc

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
