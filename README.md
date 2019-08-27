# continuity
Dotfiles and other configuations that should live with me across machines


## New dev machine setup
### Dev Necesseties
* [iTerm2](https://www.iterm2.com) - Guake like terminal
* [vmd](https://github.com/yoshuawuyts/vmd) - cmd line tool for markdown preview 

### General 
1. Clone this repository 
2. Create symlinks in my home folder 
* `ln -s ~/continuity/.vimrc ~/.vimrc`

### iterm2
1. Create a new profile, go to keys, and load a preset for "natural text editing" 
2. Set gruvbox colors from [github](https://github.com/morhetz/gruvbox-contrib).
3. Set terminal width and set activation key to `option + z`.

### zsh
1. Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), which includes the `zsh` shell.
2. Create a `.zsh.local` in my home folder that will hold machine (or company/organization) specific settings. This'll get sourced at the end of the linked .zshrc file.

### vim
1. install [vim-pathogen](https://github.com/tpope/vim-pathogen) under ~/.vim/bundle
2. copy [gruvbox vim colors](https://github.com/morhetz/gruvbox) to ~/.vim/colors/gruvbox.vim
3. install [ctrlp](https://github.com/ctrlpvim/ctrlp.vim) under ~/.vim/bundle
4. install [ctrlp-py-matcher](https://github.com/FelikZ/ctrlp-py-matcher) under ~/.vim/bundle

## Other Tools 
### Mac
* [Spectacle](https://www.spectacleapp.com/) - window snapper/resizer
* [Atom](https://atom.io/) - awesome UI-based text editor 
