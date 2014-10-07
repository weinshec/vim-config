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

"" GUI options
set guioptions-=T
set guioptions-=r
set guioptions-=L
if has("gui_running")
    set guifont=Droid\ Sans\ Mono\ 11
endif


""""""""""""""""""""""""""
"" Pathogen Plugin Manager
""""""""""""""""""""""""""
execute pathogen#infect()


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
au BufNewFile,BufRead *.conf set filetype=cfg


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
"" MAPPINGS
""""""""""""""
nmap <F7> :NERDTreeToggle<CR>
nmap <F9> :call TableOfContents()<CR>
nmap <F10> :call <SID>SynStack()<CR>
nmap <C-W>u :call MergeTabs()<CR>
inoremap jk <Esc>
noremap <C-n> :nohl<CR>
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
noremap <Space> i<Space><Esc>l
map <F8> :call ToggleShowWidth()<CR>
nnoremap ü <c-]>
nnoremap Ü <c-O>

"" Leader key combinations
let mapleader = ","
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
map <Leader>e :e.<CR>
map <Leader>m :w <bar> !make<CR>
map <Leader>mc :w <bar> !make clean<CR>
vnoremap <Leader>t= :Tab/=<CR>
vnoremap <Leader>t, :Tab/,<CR>
vnoremap <Leader>t) :Tab/)<CR>
vnoremap <Leader>t( :Tab/(<CR>


command! Q q " Bind :Q to :q
command! Qall qall 
command! W w " Bind :W to :w


"""""""""""
"" NERDTree
"""""""""""
let NERDTreeChDirMode=0
let NERDTreeHijackNetrw = 0


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
  \ 'file': '\v\.(root|tar.gz|o|so|zip|pdf|eps)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" Make startify not open ctrlp in a new buffer
let g:ctrlp_reuse_window = 'startify'


""""""""""""
"" UltiSnips
""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


"""""""""""
"" Markdown
"""""""""""
let g:vim_markdown_initial_foldlevel=1


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
