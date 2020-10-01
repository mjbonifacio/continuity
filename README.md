# continuity
Dotfiles and other configuations that should live with me across machines. This is mostly Mac specific setup.

## New dev machine setup
### Fonts I like
`Monaco` is pretty nice.

### Dev Necesseties
* [iTerm2](https://www.iterm2.com) - Guake like terminal

#### Install ctags
```
brew install ctags
```
You can generate tags in a project's root and may need to create an alias for this version.
```
ctags -R .
alias ctags="$(brew --prefix)/bin/ctags" <-- is already in my .zshrc
```
### General 
1. Clone this repository 
2. Create symlinks in my home folder, example: `ln -s ~/continuity/.vimrc ~/.vimrc`
3. Reduce key repeat by a little bit
```
defaults write -g InitialKeyRepeat -int 17
defaults write -g KeyRepeat -int 2
```

### iterm2
1. Create a new profile, go to keys, and load a preset for "natural text editing" 
2. Set gruvbox colors from [github](https://github.com/morhetz/gruvbox-contrib).
3. Set terminal width and set activation key to `option + z`.
4. Set font size to 14
5. Under the general pane, working directory section, go to advanced configuration and set new splits to open in current dir.

### zsh
1. Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), which includes the `zsh` shell.
2. Create a `.zsh.local` in my home folder that will hold machine (or company/organization) specific settings. This'll get sourced at the end of the linked .zshrc file.

### git
1. Set config (name and email address), and location of symlinked global gitignore.
* `git config --global --add core.excludesFile ~/.gitignore.global`

### vim
Start with macvim, which supports YouCompleteMe:

`brew install macvim`

1. [vim-pathogen](https://github.com/tpope/vim-pathogen)
2. [gruvbox vim colors](https://github.com/morhetz/gruvbox)
3. [ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
4. [ctrlp-py-matcher](https://github.com/FelikZ/ctrlp-py-matcher)
5. [lightline](https://github.com/itchyny/lightline.vim)
6. [vim-gitbranch](https://github.com/itchyny/vim-gitbranch) so lightline can show us the branch with my `.vimrc` config
7. [vim-surround](https://github.com/tpope/vim-surround)
8. [NERDTree](https://github.com/scrooloose/nerdtree) though most of the time ctrl-p will be better
9. [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe)
10. [auto-pairs](https://github.com/jiangmiao/auto-pairs)
11. [vim-fugitive](https://github.com/tpope/vim-fugitive)
12. [NERDCommenter](https://github.com/scrooloose/nerdcommenter)
13. [vim-auto-save](https://github.com/907th/vim-auto-save)

#### Language specific plugins
* [vim-go](https://github.com/fatih/vim-go)

## Other Tools 
### CLI tools
* [tig](https://github.com/jonas/tig)
* [vmd](https://github.com/yoshuawuyts/vmd) - cmd line tool for markdown preview 
* [bat](https://github.com/sharkdp/bat), a cat clone with wings: `brew install bat`
* tree, to get a quick visual of directories: `brew install tree`

### Mac
* [Spectacle](https://www.spectacleapp.com/) - window snapper/resizer
* [Atom](https://atom.io/) - awesome UI-based text editor 

## Possibly annoying things
#### Problem: can't paste between vim sessions
It's possible that your vim doesn't have `has('clipboard')==1`. Echo that from vim and troubleshoot (might be as simple as a `brew install vim` (to install MacVim) and adding an alias to `.zshrc.local`).

## Setup Scripts
I gave my first go at a repeatable Ubuntu setup script. As of 9 Nov 2011, it's a prerequisite that this repository is cloned, all dotfiles and scripts are in the root of this project, and the script is executed from here. As an example, you should just be able to:

```
apt update
apt install git -y
git clone https://github.com/MJBonifacio/continuity.git ~/continuity
cd ~/continuity
bash ubuntu-setup.bash
```

And things should work!
