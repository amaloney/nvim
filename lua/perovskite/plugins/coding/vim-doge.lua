-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- plugins/vim-doge.lua
-- https://github.com/kkoomen/vim-doge
-- (DO)cumentatio (GE)nerator
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
return {
  "kkoomen/vim-doge",
  config = function()
    vim.g.doge_doc_standard_python = "numpy"
    vim.g.doge_doc_standard_javascript = "jsdoc"
    vim.g.doge_doc_standard_typescript = "jsdoc"
    vim.g.doge_python_setting = { ["omit_redundant_param_types"] = 0 }
  end,
}
