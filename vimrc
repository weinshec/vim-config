"""""""""""""""
"" General Sets
"""""""""""""""

autocmd! bufwritepost .vimrc source %

set nocompatible
set number
set tabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set nowrap
set autoindent
set gdefault
set wildmenu
set history=700
set undolevels=700
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup
set nowritebackup
set noswapfile
set pastetoggle=<F2>
set clipboard=unnamedplus
set bs=2
set foldmethod=syntax
set foldlevel=1


""""""""""""""""""""""""""
"" Pathogen Plugin Manager
""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'godlygeek/tabular'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-startify'
Plug 'SirVer/ultisnips'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdcommenter'
Plug 'lilydjwg/colorizer'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'tpope/vim-unimpaired'

call plug#end()


""""""""""""""""""""""
"" Syntax highlighting
""""""""""""""""""""""
syntax on
filetype plugin indent on


""""""""""""""
"" Colorscheme
""""""""""""""
set t_Co=256
colorscheme monokai


"""""""""""""""""""
"" Type Definitions
"""""""""""""""""""
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main
au BufNewFile,BufRead *.conf set filetype=cfg

au BufNewFile,BufRead *.py set foldmethod=indent
au BufNewFile,BufRead *.py set foldlevel=0
au BufNewFile,BufRead *.py set foldnestmax=2



""""""""""""""""
"" Spellchecking
""""""""""""""""
if v:version >= 700
    setlocal spell spelllang=en_us
    set nospell
endif


""""""""""""""
"" MAPPINGS
""""""""""""""
nmap <F8> :call ToggleShowWidth()<CR>
nmap <F9> :call TableOfContents()<CR>
nmap <F10> :call <SID>SynStack()<CR>
inoremap jk <Esc>
noremap  <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <s-h> :tabprevious<CR>
map <s-l> :tabnext<CR>
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation
nnoremap ü <c-]>
nnoremap Ü <c-O>
nnoremap <space> za
vnoremap <space> zf

"" Leader key combinations
let mapleader = ","
nmap <Leader>s :set spell!<CR>
nmap <Leader>r :%s/\<<C-r><C-w>\>/
nmap <Leader>m :w <bar> !make<CR>
nmap <Leader>mc :w <bar> !make clean<CR>
nmap <Leader>mt :w <bar> !make test<CR>

vmap <Leader>t= :Tab/=<CR>
nmap <Leader>t= :Tab/=<CR>
vmap <Leader>t, :Tab/,\zs<CR>
nmap <Leader>t, :Tab/,\zs<CR>
vmap <Leader>t) :Tab/)<CR>
nmap <Leader>t) :Tab/)<CR>
vmap <Leader>t( :Tab/(/l0c1l0<CR>
nmap <Leader>t( :Tab/(/l0c1l0<CR>
vmap <Leader>t: :Tab/:\zs<CR>
nmap <Leader>t: :Tab/:\zs<CR>


command! Q q
command! Qa qall 
command! W w 
command! Wq wq


""""""""""""
"" Lightline
""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"<RO>":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ }


""""""""""""""""
"" YouCompleteMe
""""""""""""""""
let g:ycm_global_ycm_extra_conf = '/home/weinshec/.vim/YCM/.ycm_extra_conf.py'


""""""""""""
"" Syntastic
""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ycm_show_diagnostics_ui = 0

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-L/usr/lib/root -I/usr/include/root -ansi -Wall -Wno-long-long -pedantic -pedantic-errors -fPIC -pthread -std=c++11 -Wno-deprecated-declarations -m64 -I/usr/include/root'


"""""""""
"" Tagbar
"""""""""
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 0
let g:tagbar_sort      = 0
let g:tagbar_type_python = {
    \ 'kinds' : [
        \ 'i:imports:1:0',
        \ 'c:classes',
        \ 'f:functions',
        \ 'm:members',
        \ 'v:variables:1:0',
    \ ],
\ }


"""""""""""
"" Startify
"""""""""""
" Highlight the acsii banner with green font
hi StartifyHeader ctermfg=39
" Don't change the directory when opening a recent file with a shortcut
let g:startify_change_to_dir = 0
" Set the contents of the banner
let g:startify_custom_header = [
            \ '                 ______                 ',
            \ '              _-´ .   .`-_              ',
            \ '          |/ /  .. . +   .\ \|          ',
            \ '         |/ /            ..\ \|         ',
            \ '       \|/ |: .   ._|_ .. . | \|/       ',
            \ '        \/ |   _|_ .| . .:  | \/        ',
            \ '       \ / |.   |  .  .    .| \ /       ',
            \ '        \||| .  . .  _|_   .|||/        ',
            \ '       \__| \  . :.  .|.  ./ |__/       ',
            \ '         __| \_  .    .. _/ |__         ',
            \ '          __|  `-______-´  |__          ',
            \ '             -,____  ____,-             ',
            \ '               ---´  `---               ',
            \ '      UNITED FEDERATION OF PLANETS      ',
            \ '                                        ',
            \]
" List recently used files using viminfo.
let g:startify_show_files = 1
" The number of files to list.
let g:startify_show_files_number = 7
" A list of files to bookmark. Always shown
let g:startify_bookmarks = [ '~/.vimrc' ]


""""""""
"" CtrlP
""""""""
set runtimepath^=~/.vim/bundle/ctrlp
set wildignore+=*.root,*.tar.gz,*.o,*.so,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(root|tar.gz|o|so|zip|pdf|eps|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" Make startify not open ctrlp in a new buffer
let g:ctrlp_reuse_window = 'startify'


""""""""""""
"" UltiSnips
""""""""""""
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:ultisnips_python_style="google"


""""""""""""
"" VimScript
""""""""""""
" Toggle display of 80th column
function! ToggleShowWidth()
    if &cc > 0
        let &cc = 0
        let &textwidth = 0
    else
        let &cc = 80
        let &textwidth = 79
    endif
endfunc

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

" Map Key to Tagbar or RST-TOC
function! TableOfContents()
    if &filetype == "rst"
        execute "RivHelpSection"
    else
        execute "TagbarToggle"
    endif
endfunction
