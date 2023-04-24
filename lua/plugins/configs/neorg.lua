local ok, neorg = pcall(require, "neorg")

if not ok then
    return
end

neorg.setup {
    load = {
        ["core.defaults"] = {},
        ['core.keybinds'] = {
            config = {
                default_keybinds = true,
                neorg_leader = '<Leader>',
                hook = function(keybinds)
                    keybinds.map("norg", "n", "<Leader>jj", ":Neorg journal today<cr>")
                    keybinds.map("norg", "n", "<Leader>jt", ":Neorg journal tomorrow<cr>")
                    keybinds.map("norg", "n", "<Leader>jy", ":Neorg journal yesterday<cr>")
                end,
            }
        },
        ["core.dirman"] = {
            config = {
                workspaces = {
                    notes = "~/notes",
                },
                autochdir = true,
            }
        },
        ["core.concealer"] = {},
        ["core.journal"] = {
            config = {
                workspace = "notes",
                strategy = "flat",
            }
        },
        ["core.esupports.metagen"] = {
            config = {
                type = "auto",
                template = {
                    {
                        "title",
                        function()
                            return vim.fn.expand("%:p:t:r")
                        end,
                    },
                    { "description", "" },
                    { "authors", "Christoph Weinsheimer"},
                    { "categories", "" },
                    {
                        "created",
                        function()
                            return os.date("%Y-%m-%d")
                        end,
                    },
                    { "version", require("neorg.config").version },
                }
            }
        },
        -- ["core.gtd.base"] = {
        --     config = {
        --         workspace = "notes",
        --     },
        -- },
    }
}

vim.keymap.set("n", "<leader>ww", ":Neorg workspace notes<CR>")
vim.keymap.set("n", "<leader>jj", ":Neorg journal today<CR>")
