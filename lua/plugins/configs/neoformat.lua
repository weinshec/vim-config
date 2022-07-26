vim.g.neoformat_clangformat = {
    ["exe"]   = "clang-format",
    ["args"]  = "-style=file",
    ["stdin"] = 1,
}

vim.keymap.set("n", "<leader>gq", ":Neoformat<CR>")
