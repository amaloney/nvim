-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- plugins/vim-better-whitespace.lua
-- https://github.com/ntpeters/vim-better-whitespace
-- Causes all trailing whitespace characters to be highlighted.
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
return {
  "ntpeters/vim-better-whitespace",
  config = function()
    vim.cmd([[let g:better_whitespace_enabled = 1]])
    vim.cmd([[let g:better_whitespace_ctermcolor = "darkred"]])
  end,
}
