" Vim color file - monokai
" Generated by http://bytefluent.com/vivify 2014-05-14
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "monokai"

hi IncSearch                              guifg=#C4BE89 guibg=#000000 guisp=#000000 gui=NONE        ctermfg=186  ctermbg=NONE cterm=NONE
hi WildMenu                               guifg=#66D9EF guibg=#000000 guisp=#000000 gui=NONE        ctermfg=81   ctermbg=NONE cterm=NONE
hi SignColumn                             guifg=#A6E22E guibg=#232526 guisp=#232526 gui=NONE        ctermfg=112  ctermbg=235  cterm=NONE
hi ColorColumn                            guifg=#A6E22E guibg=#4d4d4d guisp=#232526 gui=NONE        ctermfg=NONE ctermbg=245  cterm=NONE
hi SpecialComment                         guifg=#465457 guibg=NONE    guisp=NONE    gui=bold        ctermfg=240  ctermbg=NONE cterm=bold
hi Typedef                                guifg=#66D9EF guibg=NONE    guisp=NONE    gui=NONE        ctermfg=81   ctermbg=NONE cterm=NONE
hi Title                                  guifg=#ef5939 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=209  ctermbg=NONE cterm=NONE
hi Folded                                 guifg=#465457 guibg=#000000 guisp=#000000 gui=NONE        ctermfg=240  ctermbg=NONE cterm=NONE
hi PreCondit                              guifg=#A6E22E guibg=NONE    guisp=NONE    gui=bold        ctermfg=112  ctermbg=NONE cterm=bold
hi Include                                guifg=#A6E22E guibg=NONE    guisp=NONE    gui=NONE        ctermfg=112  ctermbg=NONE cterm=NONE
"hi TabLineSel -- no settings --
hi StatusLineNC                           guifg=#808080 guibg=#080808 guisp=#080808 gui=NONE        ctermfg=8    ctermbg=232  cterm=NONE
"hi CTagsMember -- no settings --
hi NonText                                guifg=#BCBCBC guibg=#3B3A32 guisp=#3B3A32 gui=NONE        ctermfg=250  ctermbg=237  cterm=NONE
"hi CTagsGlobalConstant -- no settings --
hi DiffText                               guifg=NONE guibg=#4C4745    guisp=#4C4745 gui=bold,italic ctermfg=NONE ctermbg=239  cterm=bold
hi ErrorMsg                               guifg=#F92672 guibg=#232526 guisp=#232526 gui=bold        ctermfg=197  ctermbg=235  cterm=bold
hi Ignore                                 guifg=#808080 guibg=#272822 guisp=#272822 gui=NONE        ctermfg=8    ctermbg=235  cterm=NONE
hi Debug                                  guifg=#BCA3A3 guibg=NONE    guisp=NONE    gui=bold        ctermfg=138  ctermbg=NONE cterm=bold
hi PMenuSbar                              guifg=#367b9e guibg=#333333 guisp=#333333 gui=NONE        ctermfg=67   ctermbg=236  cterm=NONE
hi Identifier                             guifg=#fd951f guibg=NONE    guisp=NONE    gui=NONE        ctermfg=208  ctermbg=NONE cterm=NONE
hi SpecialChar                            guifg=#F92672 guibg=NONE    guisp=NONE    gui=bold        ctermfg=197  ctermbg=NONE cterm=bold
hi Conditional                            guifg=#F92672 guibg=NONE    guisp=NONE    gui=bold        ctermfg=197  ctermbg=NONE cterm=bold
hi StorageClass                           guifg=#FD971F guibg=NONE    guisp=NONE    gui=italic      ctermfg=208  ctermbg=NONE cterm=NONE
hi Todo                                   guifg=#FFFFFF guibg=#272822 guisp=#272822 gui=bold        ctermfg=15   ctermbg=235  cterm=bold
hi Special                                guifg=#66D9EF guibg=#272822 guisp=#272822 gui=italic      ctermfg=81   ctermbg=235  cterm=NONE
hi LineNr                                 guifg=#BCBCBC guibg=#3B3A32 guisp=#3B3A32 gui=bold        ctermfg=250  ctermbg=237  cterm=bold
hi StatusLine                             guifg=#ffffff guibg=#1f5c9c guisp=#1f5c9c gui=bold        ctermfg=15   ctermbg=25   cterm=bold
hi Normal                                 guifg=#ffffff guibg=#242424 guisp=#242424 gui=NONE        ctermfg=15   ctermbg=235  cterm=NONE
hi Label                                  guifg=#E6DB74 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=185  ctermbg=NONE cterm=NONE
"hi CTagsImport -- no settings --
hi PMenuSel                               guifg=#ffffff guibg=#2a66bf guisp=#2a66bf gui=bold        ctermfg=15   ctermbg=4    cterm=bold
" hi Search                               guifg=#FFFFFF guibg=#455354 guisp=#455354 gui=NONE        ctermfg=15   ctermbg=240  cterm=NONE
hi Search                                 guifg=#000000 guibg=#e1f261 guisp=#e1f261 gui=NONE        ctermfg=0    ctermbg=227  cterm=NONE
"hi CTagsGlobalVariable -- no settings --
hi Delimiter                              guifg=#8F8F8F guibg=NONE    guisp=NONE    gui=NONE        ctermfg=245  ctermbg=NONE cterm=NONE
hi Statement                              guifg=#f7285c guibg=NONE    guisp=NONE    gui=bold        ctermfg=13   ctermbg=NONE cterm=bold
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment                                guifg=#6b6b6b guibg=NONE    guisp=NONE    gui=NONE        ctermfg=242  ctermbg=NONE cterm=NONE
hi Character                              guifg=#E6DB74 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=185  ctermbg=NONE cterm=NONE
hi Float                                  guifg=#AE81FF guibg=NONE    guisp=NONE    gui=NONE        ctermfg=141  ctermbg=NONE cterm=NONE
hi Number                                 guifg=#AE81FF guibg=NONE    guisp=NONE    gui=NONE        ctermfg=141  ctermbg=NONE cterm=NONE
hi Boolean                                guifg=#AE81FF guibg=NONE    guisp=NONE    gui=NONE        ctermfg=141  ctermbg=NONE cterm=NONE
hi Operator                               guifg=#F92672 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=197  ctermbg=NONE cterm=NONE
hi CursorLine                             guifg=NONE guibg=#3E3D32    guisp=#3E3D32 gui=NONE        ctermfg=NONE ctermbg=237  cterm=NONE
"hi Union -- no settings --
"hi TabLineFill -- no settings --
hi Question                               guifg=#66D9EF guibg=NONE    guisp=NONE    gui=NONE        ctermfg=81   ctermbg=NONE cterm=NONE
hi WarningMsg                             guifg=#FFFFFF guibg=#333333 guisp=#333333 gui=bold        ctermfg=15   ctermbg=236  cterm=bold
hi VisualNOS                              guifg=NONE guibg=#403D3D    guisp=#403D3D gui=NONE        ctermfg=NONE ctermbg=238  cterm=NONE
hi DiffDelete                             guifg=#f53434 guibg=#2e0000 guisp=#2e0000 gui=NONE        ctermfg=13   ctermbg=52   cterm=NONE
hi ModeMsg                                guifg=#E6DB74 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=185  ctermbg=NONE cterm=NONE
hi CursorColumn                           guifg=NONE guibg=#3E3D32    guisp=#3E3D32 gui=NONE        ctermfg=NONE ctermbg=237  cterm=NONE
hi Define                                 guifg=#66D9EF guibg=NONE    guisp=NONE    gui=NONE        ctermfg=81   ctermbg=NONE cterm=NONE
hi Function                               guifg=#07a6e0 guibg=NONE    guisp=NONE    gui=bold        ctermfg=38   ctermbg=NONE cterm=bold
hi FoldColumn                             guifg=#465457 guibg=#000000 guisp=#000000 gui=NONE        ctermfg=240  ctermbg=NONE cterm=NONE
hi PreProc                                guifg=#fd951f guibg=NONE    guisp=NONE    gui=NONE        ctermfg=208  ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
hi Visual                                 guifg=NONE guibg=#403D3D    guisp=#403D3D gui=NONE        ctermfg=NONE ctermbg=238  cterm=NONE
hi MoreMsg                                guifg=#E6DB74 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=185  ctermbg=NONE cterm=NONE
"hi SpellCap -- no settings --
hi VertSplit                              guifg=#808080 guibg=#080808 guisp=#080808 gui=bold        ctermfg=8    ctermbg=232  cterm=bold
hi Exception                              guifg=#A6E22E guibg=NONE    guisp=NONE    gui=bold        ctermfg=112  ctermbg=NONE cterm=bold
hi Keyword                                guifg=#F92672 guibg=NONE    guisp=NONE    gui=bold        ctermfg=197  ctermbg=NONE cterm=bold
hi Type                                   guifg=#66D9EF guibg=NONE    guisp=NONE    gui=NONE        ctermfg=81   ctermbg=NONE cterm=NONE
hi DiffChange                             guifg=#89807D guibg=#4C4745 guisp=#4C4745 gui=NONE        ctermfg=245  ctermbg=239  cterm=NONE
hi Cursor                                 guifg=#000000 guibg=#F8F8F0 guisp=#F8F8F0 gui=NONE        ctermfg=NONE ctermbg=230  cterm=NONE
"hi SpellLocal -- no settings --
hi Error                                  guifg=#960050 guibg=#1E0010 guisp=#1E0010 gui=NONE        ctermfg=89   ctermbg=53   cterm=NONE
hi PMenu                                  guifg=#2787ba guibg=#192121 guisp=#192121 gui=NONE        ctermfg=25   ctermbg=234  cterm=NONE
hi SpecialKey                             guifg=#66D9EF guibg=NONE    guisp=NONE    gui=italic      ctermfg=81   ctermbg=NONE cterm=NONE
hi Constant                               guifg=#3196b5 guibg=NONE    guisp=NONE    gui=bold        ctermfg=31   ctermbg=NONE cterm=bold
"hi DefinedName -- no settings --
hi Tag                                    guifg=#F92672 guibg=NONE    guisp=NONE    gui=italic      ctermfg=197  ctermbg=NONE cterm=NONE
hi String                                 guifg=#a6e22e guibg=NONE    guisp=NONE    gui=NONE        ctermfg=112  ctermbg=NONE cterm=NONE
hi PMenuThumb                             guifg=#228799 guibg=#757575 guisp=#757575 gui=NONE        ctermfg=24   ctermbg=243  cterm=NONE
hi MatchParen                             guifg=#000000 guibg=#FD971F guisp=#FD971F gui=bold        ctermfg=NONE ctermbg=208  cterm=bold
"hi LocalVariable -- no settings --
hi Repeat                                 guifg=#F92672 guibg=NONE    guisp=NONE    gui=bold        ctermfg=197  ctermbg=NONE cterm=bold
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
hi Directory                              guifg=#A6E22E guibg=NONE    guisp=NONE    gui=bold        ctermfg=112  ctermbg=NONE cterm=bold
hi Structure                              guifg=#66D9EF guibg=NONE    guisp=NONE    gui=NONE        ctermfg=81   ctermbg=NONE cterm=NONE
hi Macro                                  guifg=#C4BE89 guibg=NONE    guisp=NONE    gui=italic      ctermfg=186  ctermbg=NONE cterm=NONE
hi Underlined                             guifg=#808080 guibg=NONE    guisp=NONE    gui=underline   ctermfg=8    ctermbg=NONE cterm=underline
hi DiffAdd                                guifg=#ffffff guibg=#0d3952 guisp=#0d3952 gui=NONE        ctermfg=15   ctermbg=23   cterm=NONE
"hi TabLine -- no settings --
hi cursorim                               guifg=#404040 guibg=#8b8bff guisp=#8b8bff gui=NONE        ctermfg=238  ctermbg=105  cterm=NONE
"hi clear -- no settings --
hi mbenormal                              guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE        ctermfg=187  ctermbg=237  cterm=NONE
hi perlspecialstring                      guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE        ctermfg=176  ctermbg=238  cterm=NONE
hi doxygenspecial                         guifg=#fdd090 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=222  ctermbg=NONE cterm=NONE
hi mbechanged                             guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE        ctermfg=255  ctermbg=237  cterm=NONE
hi mbevisiblechanged                      guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE        ctermfg=255  ctermbg=60   cterm=NONE
hi doxygenparam                           guifg=#fdd090 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=222  ctermbg=NONE cterm=NONE
hi doxygensmallspecial                    guifg=#fdd090 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=222  ctermbg=NONE cterm=NONE
hi doxygenprev                            guifg=#fdd090 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=222  ctermbg=NONE cterm=NONE
hi perlspecialmatch                       guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE        ctermfg=176  ctermbg=238  cterm=NONE
hi cformat                                guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE        ctermfg=176  ctermbg=238  cterm=NONE
hi lcursor                                guifg=#404040 guibg=#8fff8b guisp=#8fff8b gui=NONE        ctermfg=238  ctermbg=120  cterm=NONE
hi doxygenspecialmultilinedesc            guifg=#ad600b guibg=NONE    guisp=NONE    gui=NONE        ctermfg=130  ctermbg=NONE cterm=NONE
hi taglisttagname                         guifg=#808bed guibg=NONE    guisp=NONE    gui=NONE        ctermfg=105  ctermbg=NONE cterm=NONE
hi doxygenbrief                           guifg=#fdab60 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=215  ctermbg=NONE cterm=NONE
hi mbevisiblenormal                       guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE        ctermfg=252  ctermbg=60   cterm=NONE
hi user2                                  guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE        ctermfg=103  ctermbg=60   cterm=NONE
hi user1                                  guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE        ctermfg=48   ctermbg=60   cterm=NONE
hi doxygenspecialonelinedesc              guifg=#ad600b guibg=NONE    guisp=NONE    gui=NONE        ctermfg=130  ctermbg=NONE cterm=NONE
hi doxygencomment                         guifg=#ad7b20 guibg=NONE    guisp=NONE    gui=NONE        ctermfg=130  ctermbg=NONE cterm=NONE
hi cspecialcharacter                      guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE        ctermfg=176  ctermbg=238  cterm=NONE
hi rstStrongEmphasis                      guifg=NONE    guibg=NONE    guisp=NONE    gui=bold        ctermfg=NONE ctermbg=238  cterm=bold
hi rstEmphasis                            guifg=NONE    guibg=NONE    guisp=NONE    gui=italic      ctermfg=NONE ctermbg=238  cterm=NONE
