""""""""""""""
"" LineNumbers
""""""""""""""
set number

"""""""""""
"" TabWidth
""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab

""""""""""""""""""""""""
"" Permamenet status bar
""""""""""""""""""""""""
set laststatus=2

""""""""""""""""""""""""""
"" Pathogen Plugin Manager
""""""""""""""""""""""""""
execute pathogen#infect()
syntax on
filetype plugin indent on

""""""""""""""
"" Colorscheme
""""""""""""""
colorscheme m4ckColors

""""""""""""""""""
"" OmniCppComplete
""""""""""""""""""
set nocp
set tags+=$HOME/.vim/tags/cpp
set tags+=$HOME/.vim/tags/root
set tags+=$WORKSPACE_PATH/tags
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview"

""""""""""""""""
"" Spellchecking
""""""""""""""""
if v:version >= 700
    ""setlocal spell spelllang=en_us
    setlocal spell spelllang=de,en_us
    set nospell
endif

"""""""""""
"" Encoding
"""""""""""
let g:NERDTreeDirArrows=0

""""""""""""""
"" Leader key
""""""""""""""
let mapleader = ","

""""""""""""""""
"" Custom Maps
""""""""""""""""
"" Tasklist plugin
map <leader>td <Plug>TaskList
"" Tagbar plugin
nmap <F8> :TagbarToggle<CR>
"" show syntax highlighting group for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
"" type <leader>s for search/replace under cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/


