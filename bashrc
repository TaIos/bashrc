#SYSTEM SPECIFIC SETTING

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

################################################################################
# BASH_SETTING
export EDITOR="/bin/vim"

#PATH
export PATH=$PATH:/home/slarty/develop/skripty_bash:/home/slarty/Dokumenty/penTesting/skripty

# Command line editor
set -o vi
bind -m vi-insert "\C-l":clear-screen # crtl+L to clear screan
bind '"\e."':yank-last-arg # acces last argument with dot

# User specific aliases and functions
alias rm='rm -i'
alias gxx='g++ -Wall -pedantic -Wextra --std=c++11 -o 'run.out''
alias gsanitize='g++ -Wall -pedantic -Wextra --std=c++11 -fsanitize=address -lasan -o 'sanitized.out''
alias ls='ls -F --color=auto'
alias ll='ls -lhF --color=auto'
alias la='ls -lahF --color=auto'
alias pxx='/usr/bin/python3.7'
alias unetbootinx='xhost local:root ; sudo QT_X11_NO_MITSHM=1 /home/slarty/apps/unetbootin/unetbootin'
alias clipboard='xclip -sel clip'
alias grep='grep -E'

################################################################################
## GIT prompt
source ~/.git_prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWUPSTREAM="auto verbose"
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='__git_ps1 "[\u@\h \w" "]$ "'

################################################################################
## FUNCTIONS
#
function backup() {
	newname=$1.`date +%Y-%m-%d.%H%M.bak`;
	mv $1 $newname;
	echo "Backed up $1 to $newname.";
	cp -p $newname $1
}

################################################################################

