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


**The complete list of plugins:**
+ vim-plug (https://github.com/junegunn/vim-plug)
+ Lighline (https://github.com/itchyny/lightline.vim)
+ tabular (https://github.com/godlygeek/tabular)
+ CtrlP (https://github.com/kien/ctrlp.vim)
+ tagbar (https://github.com/majutsushi/tagbar)
+ Syntastic (https://github.com/scrooloose/syntastic)
+ vim-fugitive (https://github.com/tpope/vim-fugitive)
+ vim-startify (https://github.com/mhinz/vim-startify)
+ UltiSnips (https://github.com/SirVer/ultisnips)
+ delimitMate (https://github.com/Raimondi/delimitMate)
+ NERDcommenter (https://github.com/scrooloose/nerdcommenter)
+ colorizer (https://github.com/lilydjwg/colorizer)
+ YouCompleteMe (https://github.com/Valloric/YouCompleteMe)
+ vim-unimpaired (https://github.com/tpope/vim-unimpaired)

For the documentation of each plugin, refer to the plugins help or github page.



## Installation

Clone this repository to your $HOME/.vim folder and copy or link the included
vimrc to your $HOME directory.

    cd $HOME
    git clone https://github.com/weinshec/vim-config .vim
    ln -s $HOME/.vim/vimrc $HOME/.vimrc

To initialize the plugins, simply run

    :PluginInstall

from within vim to trigger their installation via vim-plug.
