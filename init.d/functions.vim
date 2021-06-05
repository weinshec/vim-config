" Autoclose omnicomplete
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Toggle display of colored column
function! ToggleShowWidth()
    if &cc == ''
      set cc=+1
    else
      set cc=
    endif
endfunc

" Show TODO/FIXME occurrences in a quickfix list
command Todo noautocmd vimgrep /TODO\|FIXME/j % | cw

" Customize my fold text, behaviour and color
set foldtext=MyFoldText()
function! MyFoldText()
    if v:version < 701
      return foldtext()
    endif
    let &l:fillchars = substitute(&l:fillchars,',\?fold:.','','gi')
    let l:numwidth = (v:version < 701 ? 8 : &numberwidth)
    let l:foldtext = '   |'.(v:foldend-v:foldstart).' lines|'
    let l:endofline = (&textwidth>0 ? &textwidth : 80)
    if &fdm=='diff'
      let l:linetext = strpart(' ---- unmodified content ----',0,l:endofline-strlen(l:foldtext))
    else
      let l:linetext = strpart(getline(v:foldstart),0,l:endofline-strlen(l:foldtext))
    endif
    let l:align = l:endofline-strlen(l:linetext)
    setlocal fillchars+=fold
    return printf('%s%*s', l:linetext, l:align, l:foldtext)
endfunction

" Show decimal and hex numbers under cursor
nnoremap gn :call DecAndHex(expand("<cword>"))<CR>
function! DecAndHex(number)
  let ns = '[.,;:''"<>(){}\[\]^_U]'      " number separators
  if a:number =~? '^' . ns. '*[-+]\?\d\+' . ns . '*$'
     let dec = substitute(a:number, '[^0-9+-]*\([+-]\?\d\+\).*','\1','')
     echo dec . printf('  ->  0x%X, 0b%08b', dec, dec)
  elseif a:number =~? '^\w*' . ns. '*\(0x\|#\)\(\x\+\)' . ns . '*$'
     let hex = substitute(a:number, '.\{-}\%\(0x\|#\)\(\x\+\).*','\1','')
     echo '0x' . hex . printf('  ->  %d', eval('0x'.hex))
  else
     echo "NaN"
  endif
endfunction
