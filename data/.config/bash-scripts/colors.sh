#!/bin/bash

# Enable console colors
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
PS1='\[\033[1;32m\]\u\[\033[1;36m\]@\[\033[1;32m\]\h:\[\033[1;33m\]\w\[\033[1;32m\]\$\[\033[0m\] '
