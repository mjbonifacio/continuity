# continuity
Dotfiles and other configuations that should live with me across machines


## New dev machine setup
### Dev Necesseties
* [iTerm2](https://www.iterm2.com) - Guake like terminal
* [vmd](https://github.com/yoshuawuyts/vmd) - cmd line tool for markdown preview 

#### Install ctags
```
brew install ctags
```

And also install [vim-go](https://github.com/fatih/vim-go) for that sweet go dev workflow.

```
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
```

### General 
1. Clone this repository 
2. Create symlinks in my home folder, example: `ln -s ~/continuity/.vimrc ~/.vimrc`
3. Reduce key repeat by a little bit
```
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2
```

### iterm2
1. Create a new profile, go to keys, and load a preset for "natural text editing" 
2. Set gruvbox colors from [github](https://github.com/morhetz/gruvbox-contrib).
3. Set terminal width and set activation key to `option + z`.
4. Set font size to 14

### zsh
1. Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), which includes the `zsh` shell.
2. Create a `.zsh.local` in my home folder that will hold machine (or company/organization) specific settings. This'll get sourced at the end of the linked .zshrc file.

### git
1. Set config (name and email address), and location of symlinked global gitignore.
* `git config --global --add core.excludesFile ~/.gitignore.global`

### vim
1. [vim-pathogen](https://github.com/tpope/vim-pathogen)
2. copy [gruvbox vim colors](https://github.com/morhetz/gruvbox) to ~/.vim/colors/gruvbox.vim
3. [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
4. [ctrlp-py-matcher](https://github.com/FelikZ/ctrlp-py-matcher)
5. [lightline](https://github.com/itchyny/lightline.vim)
6. [vim-gitbranch](https://github.com/itchyny/vim-gitbranch) so lightline can show us the branch with my `.vimrc` config
7. [vim-surround](https://github.com/tpope/vim-surround)

## Other Tools 
### Mac
* [Spectacle](https://www.spectacleapp.com/) - window snapper/resizer
* [Atom](https://atom.io/) - awesome UI-based text editor 
* [bat](https://github.com/sharkdp/bat), a cat clone with wings: `brew install bat`

## Possibly annoying things
#### Problem: can't paste between vim sessions
It's possible that your vim doesn't have `has('clipboard')==1`. Echo that from vim and troubleshoot (might be as simple as a `brew install vim` and adding an alias to `.zshrc.local`).

