vim.g.fzf_action = {
    ["ctrl-t"] = "tab split",
    ["ctrl-s"] = "split",
    ["ctrl-v"] = "vsplit",
}

vim.g.fzf_layout = { ["down"] = "50%" }
vim.g.fzf_preview_window = {"right:50%", "ctrl-/"}

vim.env.FZF_DEFAULT_OPTS = "--bind shift-up:preview-half-page-up,shift-down:preview-half-page-down"

vim.keymap.set("n", "<leader>ff", ":Files<CR>")
vim.keymap.set("n", "<Leader>fr", ":Rg <C-r><C-w><CR>")
vim.keymap.set("n", "<Leader>fb", ":Buffers<CR>")
vim.keymap.set("n", "<Leader>fg", ":GFiles<CR>")
--vim.keymap.set("n", "<Leader>fi", ":call FzfFilesImplHdrFile()<CR>")
