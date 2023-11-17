vim.g.neoformat_cpp_clangformat = {
    ["exe"]   = "clang-format",
    ["args"]  = {"-style=file"},
    ["stdin"] = 0,
}

vim.g.neoformat_rust_rustfmt = {
    ["exe"]   = "rustfmt",
    ["args"]  = {"--edition 2021"},
    ["stdin"] = 1,
}

vim.keymap.set("n", "<leader>gq", ":Neoformat<CR>")
