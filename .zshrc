# ZSH
# This kind of assumes I'm uzing zsh on a mac (but still works on linux)
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# plugins
plugins=(
	git
	gpg-agent
)

source $ZSH/oh-my-zsh.sh
source ~/continuity/.bashrc
fpath=(/usr/local/share/zsh-completions $fpath)
alias sz="source ~/.zshrc"
alias vz="vim ~/.zshrc"
alias vzl="vim ~/.zshrc.local"
alias az="atom ~/.zshrc"

# tags
alias ctags="$(brew --prefix)/bin/ctags"
alias gentags="ctags -R ."

# load machine specific settings - create a .zshrc.local when you set up a new machine!!
. ~/.zshrc.local

