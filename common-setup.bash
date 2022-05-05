cd $HOME
mkdir .vim
cd .vim
mkdir autoload bundle

# Remove created files for idempotency
rm  ~/.bashrc ~/.vimrc ~/.ideavimrc

# Link dotfiles
ln -s ~/continuity/.bashrc ~/.bashrc
ln -s ~/continuity/.vimrc ~/.vimrc
ln -s ~/continuity/.vimrc ~/.ideavimrc
ln -s ~/continuity/.gitignore.global ~/.gitignore.global

source ~/.bashrc
touch ~/.zshrc.local
source ~/.zshrc

git config --global --add core.excludesFile ~/.gitignore.global

# go
# https://github.com/moovweb/gvm
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

# vim
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/morhetz/gruvbox ~/.vim/bundle/gruvbox.vim
git clone https://github.com/ctrlpvim/ctrlp.vim ~/.vim/bundle/ctrlp.vim
git clone https://github.com/FelikZ/ctrlp-py-matcher ~/.vim/bundle/ctrlp-py-matcher
git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim
git clone https://github.com/itchyny/vim-gitbranch ~/.vim/bundle/vim-gitbranch
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/vim-fugitive
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter
git clone https://github.com/ycm-core/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
git clone git://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
git clone https://github.com/907th/vim-auto-save ~/.vim/bundle/vim-auto-save

git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
