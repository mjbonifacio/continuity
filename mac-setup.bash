defaults write -g InitialKeyRepeat -int 17
defaults write -g KeyRepeat -int 2

brew update
brew upgrade
brew install $(< ~/continuity/mac-packages)

source ~/continuity/common-setup.bash
