if exists('g:plugs["nvim-treesitter"]') 

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "cpp",
  highlight = {
    enable = true,
  },
}
EOF

endif
