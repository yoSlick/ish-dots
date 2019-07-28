# Prompt color and exit status
#function nonzero_return() {
#	RETVAL=$?
#	[ $RETVAL -ne 0 ] && echo "$RETVAL"
#}
#
# export PS1="\`nonzero_return\` \[\e[31m\]\h\[\e[m\]:[\[\e[36m\]\w\[\e[m\]]-\[\e[32m\]\\$\[\e[m\]  "


# Aliases
alias pd="pwd"
alias lsl="ls -l"
alias lsa="ls -a --color"
alias ..="cd .."
alias cs="clear;ls"
alias h="history"
alias gitclone="git clone https://github.com/"
alias clone="git clone"
alias com="git commit -m"
alias u="git commit -u"
alias all="git add ."
alias loadbash="source ~/.bashrc"
alias add="apk add"
alias search="apk search"
alias update="apk update && apk upgrade"
alias remove="apk remove"

# Set nano as default editor 
export EDITOR=nano

