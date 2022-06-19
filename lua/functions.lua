vim.api.nvim_create_user_command(
  "ToggleShowWidth",
  function()
    if(vim.o.colorcolumn == "")
    then
        vim.opt.colorcolumn = "+1"
    else
        vim.opt.colorcolumn = ""
    end
  end,
  {bang = true, desc = "Toggle current colorcolum width"}
)
