vim-config
==========

My personal ever-growing never-finished collection of vim configurations


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

    # For vim:
    :PlugInstall

    # For neovim:
    :PackerInstall

from within vim to trigger their installation via vim-plug/packer.
