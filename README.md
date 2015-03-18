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
+ vim-commentary (https://github.com/tpope/vim-commentary)
+ vim-startify (https://github.com/mhinz/vim-startify)
+ NERDTree (https://github.com/scrooloose/nerdtree)
+ Syntastic (https://github.com/scrooloose/syntastic)
+ vim-fugitive (https://github.com/tpope/vim-fugitive)
+ UltiSnips (https://github.com/SirVer/ultisnips)

For the documentation of each plugin, refer to the plugins help or github page.



## Installation

Clone this repository to your $HOME/.vim folder and copy the included vimrc to your $HOME directory.
Then change to repository directory and initlize and update the submodules

    cd $HOME
    git clone https://github.com/weinshec/vim-config .vim
    ln -s $HOME/.vim/vimrc $HOME/.vimrc
    cd .vim
    git submodule init
    git submodule update

If you are facing trouble, try removing the .vim folder in the first place



