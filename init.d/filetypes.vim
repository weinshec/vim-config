autocmd BufNewFile,BufRead *.conf set filetype=cfg
autocmd BufNewFile,BufRead *.tex set filetype=tex
autocmd BufNewFile,BufRead Project.meta set filetype=ruby

autocmd FileType py setlocal shiftwidth=4 tabstop=4 foldmethod=indent
autocmd FileType cpp setlocal shiftwidth=4 tabstop=4
autocmd FileType gitcommit setlocal cc=51,+1
