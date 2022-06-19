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
                neorg_leader = '<Leader>'
            }
        },
        ["core.norg.dirman"] = {
            config = {
                workspaces = {
                    notes = "~/notes",
                },
                autochdir = true,
            }
        },
        ["core.norg.concealer"] = {},
        ["core.norg.journal"] = {
            config = {
                workspace = "notes",
                strategy = "flat",
            }
        },
        ["core.norg.esupports.metagen"] = {
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
        ["core.gtd.base"] = {
            config = {
                workspace = "notes",
            },
        },
    }
}