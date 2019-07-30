# Prompt color and exit status
#function nonzero_return() {
#	RETVAL=$?
#	[ $RETVAL -ne 0 ] && echo "$RETVAL"
#}
#
# export PS1="\`nonzero_return\` \[\e[31m\]\h\[\e[m\]:[\[\e[36m\]\w\[\e[m\]]-\[\e[32m\]\\$\[\e[m\]  "

# Speed up pip installs
#export STANDARD_CACHE_DIR="${XDG_CACHE_HOME:-${HOME}/.cache}/pip"
#export WHEELHOUSE="${STANDARD_CACHE_DIR}/wheelhouse"export PIP_FIND_LINKS="file://${WHEELHOUSE}"
#export PIP_WHEEL_DIR="${WHEELHOUSE}"

# Python Userbase
export PYTHONUSERBASE=$HOME/.local/bin/

# Aliases
alias pd="pwd"
alias lsl="ls -l"
alias lsa="ls -a --color"
alias ..="cd .."
alias cs="clear;ls -a --color"
alias h="history"
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

# Manually set your language
export LANG=en_US.UTF-8
