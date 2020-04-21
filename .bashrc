[[ "$-" != *i* ]] && return

# Use case-insensitive filename globbing
shopt -s nocaseglob
# Make bash append rather than overwrite the history on disk
shopt -s histappend
# When changing directory small typos can be ignored by bash
shopt -s cdspell

# Terminal colors
C1="\[\e[33m\]"
C2="\[\e[34m\]"

stty -ixon 	# Disable ctrl+s
export HISTCONTROL=erasedups:ignoredups:ignorespace # Don't put duplicate lines in the history and do not add lines that start with a space
bind "set completion-ignore-case on"
shopt -s histappend # If you start a new terminal - you have old session history

#PS1="\n${C1}\u@\h (${C2} \w ${C1})\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ ${C1}• ${C2}\1/')${C1} • ${C2}\$(ls -1 | wc -l | sed 's: ::g') files${C1} • ${C2}\$(ls -lah | command grep -v / | command grep -m 1 total | sed 's/total //')\n${C1}====> \[\e[0m\]"

# Colors for man-pages
export LESS_TERMCAP_mb=$'\e[1;33m'
export LESS_TERMCAP_md=$'\e[1;33m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;34m'

export EDITOR=nvim
export VISUAL=nvim


alias grep='grep --color=auto'
alias diff="diff --color=auto"

alias svi='sudo nvim'
alias vi='nvim'

alias q='exit'
alias cp='cp -i'
alias history='cat ~/.bash_history | grep'
alias less='less -R'
alias ln='ln -i'
alias mkdir='mkdir -p'
alias mv='mv -i'
alias rm='rm -Iv --preserve-root'
alias rr='rm -r'
alias rf='rr -f'
alias wget='wget -c'

alias bashrc='vi ~/.bashrc'
alias burn='pkill -9'
alias external-ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias f="find . | grep "
alias p="ps aux | grep "

alias ls='ls -hN --color=auto --group-directories-first'
alias l='ls -lF --time-style=long-iso'
alias la='l -a'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
