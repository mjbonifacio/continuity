brew update
brew upgrade
brew install $(< ~/continuity/mac-packages)

source ./common-setup.bash

defaults write -g InitialKeyRepeat -int 17
defaults write -g KeyRepeat -int 2
