#!/bin/bash

function install_neovim {
    mkdir -p $HOME/repos

    cd $HOME/repos

    git clone https://github.com/neovim/neovim.git

    cd $HOME/repos/neovim

    sudo apt-get install build-essentials cmake

    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install

    mkdir -p ~/.config/

    sudo apt-get install ripgrep
}

# Luarocks

function install_luarocks {
    cd $HOME/repos
    wget https://luarocks.org/releases/luarocks-3.11.1.tar.gz
     
    tar zxpf luarocks-3.11.1.tar.gz
    cd luarocks-3.11.1
    ./configure && make && sudo make install
    sudo luarocks install luasocket
    lua
}

