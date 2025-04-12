-- plugin that allows me to see a list of all of my undos

return {
  "mbbill/undotree",

  config = function()
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
  end,
}
