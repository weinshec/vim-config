" Vim syntax file
" Language:         RText
" Maintainer:       Martin Thiede 
" Latest Revision:  2012-10-31

if exists("b:current_syntax")
  finish
endif

" let s:cpo_save = &cpo
" set cpo&vim

syn region rtextBlock start="{" end="}" transparent fold

syn region rtextGeneric start="<" end=">"

syn match rtextComment
      \ display
      \ '^\s*#.*'

syn match rtextAnnotation
      \ display
      \ '^\s*@.*'

syn match rtextValue
      \ display
      \ '\(\w\|\.\)\+'

syn match rtextCommand
      \ display
      \ '^\s*\w\+:\@!\>'

syn match rtextIdentifier
      \ display
      \ '\(\w\+\)\@<= \w\+:\@!\>'

syn match rtextFeature
      \ display
      \ '\<\w\+\>:'

syn match rtextLink
      \ display
      \ '/\+\w\+'

syn match rtextString
     \ display
     \ '"\([^"\\]\|\\.\)*"'

hi def link rtextCommand                           Statement
hi def link rtextIdentifier                        Identifier
hi def link rtextFeature                           Label
hi def link rtextLink                              Constant
hi def link rtextString                            String
hi def link rtextValue                             Constant
hi def link rtextComment                           Comment
hi def link rtextGeneric                           Underlined
hi def link rtextAnnotation                        Special

let b:current_syntax = "rtext"
set commentstring=#%s
