apt update
apt install git ctags vim wget curl tree tmux -y

source ./common-setup.bash

# Finish setup for YouCompleteMe
apt install build-essential cmake python3-dev -y
wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
tar -xvf go1.13.4.linux-amd64.tar.gz
mv go /usr/local/
rm go1.13.4.linux-amd64.tar.gz
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
python3 install.py --clang-completer --go-completer
