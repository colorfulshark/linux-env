#/bin/bash

# install tmux and config files
sudo apt install -y tmux
cp tmux.conf ~/.tmux.conf
cp tmux.conf.local ~/.tmux.conf.local

# install vim plugin and config file
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vimrc ~/.vimrc

# install cscope
sudo apt install -y cscope

# install ctags
sudo apt install -y ctags
