vim.keymap.set("i", "jk", "<ESC>")

vim.keymap.set("", "<c-j>", "<c-w>j")
vim.keymap.set("", "<c-k>", "<c-w>k")
vim.keymap.set("", "<c-l>", "<c-w>l")
vim.keymap.set("", "<c-h>", "<c-w>h")
vim.keymap.set("", "<s-h>", ":tabprevious<CR>")
vim.keymap.set("", "<s-l>", ":tabnext<CR>")

vim.keymap.set("n", "<c-n>", ":nohl<CR>")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("", "<F7>", ":ToggleShowWidth<CR>")

vim.keymap.set("n", "<leader>nf",    ":set nofoldenable<CR>")
vim.keymap.set("n", "<leader>s",     ":set spell!<CR>")

vim.keymap.set("n", "<leader>hr",    ":%!xxd -g1<CR> :set filetype=xxd<CR>")
vim.keymap.set("n", "<Leader>hw",    ":%!xxd -r<CR> :set binary<CR> :set filetype=<CR>")
