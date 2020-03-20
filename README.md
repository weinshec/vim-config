vim-config
==========

My personal collection of vim configurations


## Description

This repository is intended to be a personal collection of VIM configurations
and plugins. Since I have to work on serveral machines every day, I find it
handy to have a central repository to collect configuration and plugin files.
When now starting work on a new machine, it just takes one command to have my
complete vim setup ready. And further, it is easy to propagate changes in the
configuration to all the other installations.


## Installation

Clone this repository to your $HOME/.vim folder and copy or link the included
vimrc to your $HOME directory.

    cd $HOME
    git clone https://github.com/weinshec/vim-config .vim

    # For vim:
    ln -s $HOME/.vim/vimrc $HOME/.vimrc

    # For neovim:
    ln -s $HOME/.vim $HOME/.config/nvim

To initialize the plugins, simply run

    :PluginInstall

from within vim to trigger their installation via vim-plug.
