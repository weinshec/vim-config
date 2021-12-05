if exists('g:plugs["vim-floaterm"]') 
    let g:floaterm_opener = "edit"
    let g:floaterm_keymap_toggle = '<F12>'
    let g:floaterm_width = 0.8
    let g:floaterm_height = 0.8

    nmap <Leader>ff <cmd>FloatermNew fzf<cr>
    nmap <Leader>fg <cmd>FloatermNew --cwd=<root> fzf<cr>
    nmap <Leader>fr <cmd>FloatermNew rg<cr>
    nmap <Leader>fn <cmd>FloatermNew ranger<cr>
    nmap <Leader>ft <cmd>FloatermNew<cr>
    nmap <Leader>fm <cmd>FloatermNew make<cr>
endif
