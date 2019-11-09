apt update
apt install git ctags vim curl tree -y

source ./common-setup.bash

# Finish setup for YouCompleteMe
apt install build-essential cmake python3-dev -y
wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
sudo tar -xvf go1.13.4.linux-amd64.tar.gz
sudo mv go /usr/local/bin
rm go1.13.4.linux-amd64.tar.gz
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer --go-completer
