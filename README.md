vim-config
==========

My personal collection of vim configurations


## Description

This repository is intended to be a personal collection of VIM configurations and plugins. Since I have to work on serveral machines every day, I find it handy to have a central repository to collect configuration and plugin files. When now starting work on a new machine, it just takes one command to have my complete vim setup ready. And further, it is easy to propagate changes in the configuration to all the other installations.


**The complete list of plugins:**
+ Pathogen (https://github.com/tpope/vim-pathogen)
+ Lighline (https://github.com/itchyny/lightline.vim)
+ tabular (https://github.com/godlygeek/tabular)
+ tagbar (https://github.com/majutsushi/tagbar)
+ CtrlP (https://github.com/kien/ctrlp.vim)

**Currently missing plugins:**
+ Snipptes
+ Commenter

For the documentation of each plugin, refer to the plugins help or github page.



## Installation

Clone this repository to your $HOME/.vim folder and copy the included vimrc to your $HOME directory.
Then change to repository directory and initlize and update the submodules

    cd $HOME
    git clone https://github.com/weinshec/vim-config .vim
    cd .vim
    cp vimrc ../.vimrc
    git submodule init
    git submodule update

If you are facing trouble, try removing the .vim folder in the first place


