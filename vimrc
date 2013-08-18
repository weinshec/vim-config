"""""""""""""""
"" General Sets
"""""""""""""""
set number
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set nowrap
set autoindent
set gdefault
set wildmenu
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

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

"""""""""""""""""""
"" Type Definitions
"""""""""""""""""""
au BufNewFile,BufRead *.conf set filetype=cfg

""""""""""""""""""
"" OmniCppComplete
""""""""""""""""""
set nocp
set tags+=$HOME/.vim/tags/cpp
set tags+=$HOME/.vim/tags/root
set tags+=$WORKSPACE_PATH/tags
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
let OmniCpp_NamespaceSearch     = 1
let OmniCpp_GlobalScopeSearch   = 1
let OmniCpp_ShowAccess          = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot      = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow    = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope    = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces   = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview"

"""""""""""""""""""""
"" OmniPythonComplete
"""""""""""""""""""""
au FileType python set omnifunc=pythoncomplete#Complete

""""""""
"" CtrlP
""""""""
set runtimepath^=~/.vim/bundle/ctrlp

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

map <Leader>td <Plug>TaskList
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
map <Leader>e :e.<CR>
map <Leader>f :CtrlP<CR>
map <Leader>m :!make<CR>
map <Leader>mc :!make clean<CR>
vnoremap <Leader>t= :Tab/=<CR>
vnoremap <Leader>t, :Tab/,<CR>

nmap <F8> :TagbarToggle<CR>
nmap <C-S-P> :call <SID>SynStack()<CR>
nmap <C-W>u :call MergeTabs()<CR>
inoremap jk <Esc>

command! Q q " Bind :Q to :q
command! Qall qall 

"""""""""""""""""""""
"" Wildcard ignorance
"""""""""""""""""""""
set wildignore+=*.root,*.tar.gz,*.o,*.so,*.zip

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(root|tar.gz|o|so|zip)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

""""""""""""
"" VimScript
""""""""""""
" Show type of object under curser
function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Merge a tab into a split in the previous window
function! MergeTabs()
  if tabpagenr() == 1
    return
  endif
  let bufferName = bufname("%")
  if tabpagenr("$") == tabpagenr()
    close!
  else
    close!
    tabprev
  endif
  vsplit
  execute "buffer " . bufferName
endfunction

