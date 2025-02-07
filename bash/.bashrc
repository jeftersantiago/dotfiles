#!/bin 

# [ -f $SC"cmds" ] && source $SC"cmds"
# PS1="\[\e]0;\u@\h\$ : \w\a\]\e[0;31m<\u@\h>\w\$\e[m "
PS1="\[\033[01;36m\][\[\033[m\]\[\033[01;34m\]\u@\h\[\033[m\] \[\033[01;32m\]\W\[\033[m\]\[\033[01;36m\]]\[\033[m\]$ "


# Enter directories without cd command 
shopt -s autocd

# Input method
alias vim='nvim'

alias \
    dw=$HOME"/Downloads"                                \
    w="~/workspace"                                     \

# typos 
alias\
      sl="ls "                                           \
      sls="ls "                                          \
      lks="ls "                                          \
      lss="ls "                                          \
      dc="cd "                                           \
      cs="cd "                                           \
      vm="mv "                                           \

alias\
     	mkdir="mkdir -vp"		              	\
        rm="rm -rfiv"			       		\
    	mv="mv -iv"	                    		\
        ls="ls --color=auto"                            \

alias\
	df="df -H"	 	                        \
	stn="sudo shutdown now" 			\
	ss="sudo su "					\
	la="ls -alx "					\
	mk="sudo make clean install" 			\
        r="ranger"                                      \

export PATH="/home/username/miniconda/bin:$PATH"


# Man pages
export MANPAGER='nvim +Man!'

export VISUAL=nvim
export EDITOR="$VISUAL"
export GIT_EDITOR="$VISUAL"

