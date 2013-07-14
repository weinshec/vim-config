vim-config
==========

My personal collection of vim configurations

------

This repository is intended to be a personal collection of VIM configurations and plugins. Since I have to work on serveral machines every day, I find it handy to have a central repository to collect configuration and plugin files. When now starting work on a new machine, it just takes one command to have my complete vim setup ready. And further, it is easy to propagate changes in the configuration to all the other installations.


**The complete list of plugins:**
+ Pathogen (easy plugin manager)
+ Powerline (fancy bottom status line)
+ NERDTree (new file explorer)
+ tabular (easy block alignment, like auto-intend)
+ vim-easymotion (fast cursor repositioning)
+ LaTeX-Box (latex support)
+ NERDCommenter (easy comment lines or blocks)
+ SnipMate (define custom language-dependent snipptes)
+ tagbar (list functions, methods, ets. in this file)
+ tasklist (toggle new tasks with TODO in comments)

For the documentation of each plugin, refer to the plugins help or github page.



## Installation
------

Simply clone this repository to your $HOME/.vim folder and copy the included vimrc to your $HOME directory:

    cd $HOME
    git clone https://github.com/weinshec/vim-config .vim
    cp .vim/vimrc ./.vimrc

If you are facing trouble, try removing the .vim folder in the first place



