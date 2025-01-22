#!/bin # [ -f $SC"aliases" ] && source $SC"aliases"
# [ -f $SC"cmds" ] && source $SC"cmds"
# PS1="\[\e]0;\u@\h\$ : \w\a\]\e[0;31m<\u@\h>\w\$\e[m "
PS1="\[\033[01;36m\][\[\033[m\]\[\033[01;34m\]\u@\h\[\033[m\] \[\033[01;32m\]\W\[\033[m\]\[\033[01;36m\]]\[\033[m\]$ "


# Enter directories without cd command 
shopt -s autocd

# Input method
alias vim='nvim'

# Man pages
export MANPAGER='nvim +Man!'
