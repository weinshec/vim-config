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
+ molokai (https://github.com/tomasr/molokai)
+ Lighline (https://github.com/itchyny/lightline.vim)
+ CtrlP (https://github.com/kien/ctrlp.vim)
+ tabular (https://github.com/godlygeek/tabular)
+ colorizer (https://github.com/lilydjwg/colorizer)
+ vim-surround (https://github.com/tpope/vim-surround)
+ UltiSnips (https://github.com/SirVer/ultisnips)
+ NERDcommenter (https://github.com/scrooloose/nerdcommenter)
+ vim-clang (https://github.com/justmao945/vim-clang)
+ vim-tagbar (https://github.com/majutsushi/tagbar)
+ C++ highlight (https://guthub.com/octol/vim-cpp-enhanced-highlight)
+ vimtex (https://github.com/lervag/vimtex)
+ django.vim (https://github.com/vim-scripts/django.vim)
+ fugitive (https://github.com/tpope/vim-fugitive)
+ auto-pairs (https://github.com/jiangmiao/auto-pairs)

*NeoVim only:*
+ neomake (https://github.com/benekastah/neomake.vim)
+ deoplete (https://github.com/Shougo/deoplete.nvim)
+ deoplete-jedi (https://github.com/zchee/deoplete-jedi)


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
