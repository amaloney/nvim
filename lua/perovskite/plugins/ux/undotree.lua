-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- plugins/undotree.lua
-- https://github.com/mbbill/undotree
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
return {
  "mbbill/undotree",
  config = function()
    local keymap = vim.api.nvim_set_keymap
    local options = { noremap = true }
    keymap("n", "<leader>u", ":UndotreeToggle<CR>", options)

    vim.cmd([[
      set undodir=$HOME/.config/undo
      set undofile
    ]])
  end,
}
