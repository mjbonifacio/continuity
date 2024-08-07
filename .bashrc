# This works as a dotfile for stuff common to both my zsh and
# bash setup.

# vim
alias v="vim"
alias vcl="find . -type f -name \"*.sw[klmnop]\" -delete"
alias vrc="vim ~/.vimrc"
alias vb="vim ~/.bashrc"
alias bz="source ~/.bashrc"

# git
cur-branch() { echo $(git rev-parse --abbrev-ref HEAD); }
merge-point() { echo $(git merge-base --fork-point master $(cur-branch)); }
merge-diff() { git diff $(merge-point)..HEAD; }

alias gs="git status"
alias gd="git diff"
alias gdc="gd --cached"
alias gdm="merge-diff"
alias gco="git checkout"
alias ga="git add"
alias gr="git reset"
alias grh="gr --hard"
alias gc="git commit"
alias gb="git branch"
alias gpl="git pull"
alias gp="git push"

# nav
alias ws="cd ~/workspace"

# python
alias aenv=". env/bin/activate"
alias cenv="virtualenv env -p $(which python3) && aenv"
alias denv="deactivate"
alias py=python3

# go
export GOPATH=$HOME/go
export PATH=$PATH:"$GOPATH/bin"
export PATH=$PATH:"/usr/local/go/bin"

# kubernetes
alias k="kubectl"

# tags
alias gentags="ctags -R ."

# fun homebrew hacks
export PATH="/opt/homebrew/bin":$PATH
