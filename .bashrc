#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias l='exa -l --group-directories-first --colour=always'
alias ls='exa -al --group-directories-first --colour=always'
alias rm='rm -v'
alias mpv='mpv --keep-open'
# alias mountsdb='/home/$USER/.scripts/mountsdb.sh'
alias msdb='udisksctl mount -b /dev/sdb1'
alias usdb='udisksctl unmount -b /dev/sdb1'
alias v='nvim'
alias gitdotf='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'

## Default prompt:
# PS1='[\u@\h \W]\$ '

## Print a message when opening terminal
#echo I am your friend, how may I help you?

## Change bash prompt to a minimal prompt
PS1="\[\e[35m\] \$ \[\e[00m\]"
PS2="\[\e[35m\] > \[\e[00m\]"

## My old prompt
# PS1=" \[\e[35m\]\W[\e[00m\] ><((*> "

## Set editors
export EDITOR="nvim"

## Use starship prompt
eval "$(starship init bash)"
