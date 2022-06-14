defaults write -g InitialKeyRepeat -int 17
defaults write -g KeyRepeat -int 2

brew update
brew upgrade
brew install $(< ~/continuity/mac-packages)

source ~/continuity/common-setup.bash

# complete YouCompleteMe setup
brew install cmake python go nodejs mono java
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --all
