cd $HOME
mkdir .vim
cd .vim
mkdir autoload bundle


# Link dotfiles
ln -s ~/.bashrc ./.bashrc
source ~/.bashrc
ln -s ~/.vimrc ./.vimrc

# git
git config --global user.email "michaelbonifacio@gmail.com"
git config --global user.name "Michael Bonifacio"

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

git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
