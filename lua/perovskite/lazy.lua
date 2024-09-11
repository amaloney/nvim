local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- { import = "perovskite.plugins" },
  { import = "perovskite.plugins.ui" },
  { import = "perovskite.plugins.ux" },
  { import = "perovskite.plugins.utils" },
  { import = "perovskite.plugins.coding" },
  {import = "perovskite.plugins.lsp"},
}, {
  install = {
    colorscheme = { "gruvbox" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
