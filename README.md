# continuity
Dotfiles and other configuations that should live with me across machines

## What I might do when I set up a new machine

1. Clone this repository 
2. Create symlinks in my home folder 
* `ln -s ~/continuity/.vimrc ~/.vimrc`

### iterm2
1. Create a new profile, go to keys, and load a preset for "natural text editing" 
2. Set gruvbox colors from [github](https://github.com/morhetz/gruvbox-contrib).

### zsh
1. Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), which includes the `zsh` shell.
2. Create a `.zsh.local` in my home folder that will hold machine (or company/organization) specific settings. This'll get sourced at the end of the linked .zshrc file.

### vim
1. copy [gruvbox vim colors](https://github.com/morhetz/gruvbox) to ~/.vim/colors/gruvbox.vim
2. install [ctrlp](https://github.com/ctrlpvim/ctrlp.vim) under ~/.vim/bundle

