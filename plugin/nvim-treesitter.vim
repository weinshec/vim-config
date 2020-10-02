if exists('g:plugs["nvim-treesitter"]') 

lua <<EOF
require'nvim-treesitter.configs'.setup {

  ensure_installed = "cpp",

  highlight = {
    enable = true
  },

  refactor = {
    -- highlight_current_scope = {
    --   enable = true
    -- },

    highlight_definitions = {
      enable = true
    },


  },

}
EOF

autocmd FileType cpp set foldmethod=expr
autocmd FileType cpp set foldexpr=nvim_treesitter#foldexpr()

endif
