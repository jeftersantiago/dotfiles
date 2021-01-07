#!/bin/sh
export READER="evince"
export LANG="en_US.UTF-8"
export SCRIPTS=$HOME/".local/bin/"
export SC=$HOME"/.local/bin/"
#export PV=$HOME"/Documents/.private/"
export CONFIGS=$HOME"/.config/"
export BROWSER="brave"


export PATH=$PATH:/usr/bin/pdflatex
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"
export PATH="$PATH:$(du "$HOME/.shortcuts/" | cut -f2 | paste -sd ':')"

test -f "$HOME"/.shrc && export ENV="$HOME"/.shrc

#if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#  exec startx &
#fi
