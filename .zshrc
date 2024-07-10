# ZSH
# This kind of assumes I'm uzing zsh on a mac (but still works on linux)
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# plugins
plugins=(
	git
)

source $ZSH/oh-my-zsh.sh
source ~/continuity/.bashrc
fpath=(/usr/local/share/zsh-completions $fpath)
alias sz="source ~/.zshrc"
alias vz="vim ~/.zshrc"
alias vzl="vim ~/.zshrc.local"
alias az="atom ~/.zshrc"

# tags
alias gentags="ctags -R ."

# load machine specific settings - create a .zshrc.local when you set up a new machine!!
. ~/.zshrc.local


[[ -s "/Users/michael.bonifacio/.gvm/scripts/gvm" ]] && source "/Users/michael.bonifacio/.gvm/scripts/gvm"
