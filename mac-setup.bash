defaults write -g InitialKeyRepeat -int 17
defaults write -g KeyRepeat -int 2
defaults write -g ApplePressAndHoldEnabled -bool false

brew update
brew upgrade
brew install $(< ~/continuity/mac-packages)
brew reinstall python3
export PATH="/opt/homebrew/bin":$PATH

source ~/continuity/common-setup.bash

# complete YouCompleteMe setup
brew install cmake python go nodejs mono java
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --all
