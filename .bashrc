#!/bin # [ -f $SC"aliases" ] && source $SC"aliases"
# [ -f $SC"cmds" ] && source $SC"cmds"

setxkbmap br
xrdb ~/.Xresources
shopt -s autocd
# PS1="\[\e]0;\u@\h\$ : \w\a\]\e[0;31m<\u@\h>\w\$\e[m "
PS1="\[\033[01;36m\][\[\033[m\]\[\033[01;34m\]\u@\h\[\033[m\] \[\033[01;32m\]\W\[\033[m\]\[\033[01;36m\]]\[\033[m\]$ "

seticon
# PS1="\[\e]0;\u@\h\$ : \w\a\]\u@\h\w\$ "
# [ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

