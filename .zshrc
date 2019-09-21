# ZSH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# plugins
plugins=(
	git
	gpg-agent
)

source $ZSH/oh-my-zsh.sh
fpath=(/usr/local/share/zsh-completions $fpath)
alias sz="source ~/.zshrc"
alias vz="vim ~/.zshrc"
alias az="atom ~/.zshrc"

# vim
alias vrc="vim ~/.vimrc"

# git
cur-branch() {echo $(git rev-parse --abbrev-ref HEAD)}
merge-point() {echo $(git merge-base --fork-point master $(cur-branch))}
merge-diff() {git diff $(merge-point)..HEAD}

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

# ruby
eval "$(rbenv init -)"
alias be="bundle exec"

# node
export PATH="/usr/local/opt/node@10/bin:$PATH"

# python
alias aenv=". env/bin/activate"
alias cenv="virtualenv env -p $(which python3) && aenv"
alias denv="deactivate"

# go
export GOPATH=$HOME/go

# kubernetes
alias k="kubectl"

# mac stuff
alias ctags="$(brew --prefix)/bin/ctags"

# load machine specific settings - create a .zshrc.local when you set up a new machine!!
. ~/.zshrc.local
