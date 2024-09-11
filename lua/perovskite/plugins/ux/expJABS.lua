-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- plugins/expJABS.lua
-- https://github.com/jeff-dh/expJABS.nvim
-- ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
return {
  "jeff-dh/expJABS.nvim",
  branch = "expJABS",
  opts = {
    position = { "center", "top" },
    relative = "editor",
    clip_popup_size = false,
    width = 80,
    height = 20,
    border = "single",
    offset = {
      top = 2,
      bottom = 2,
      left = 2,
      right = 2,
    },
    sort_mru = true,
    split_filename = true,
    split_filename_path_width = 20,
    use_devicons = false,
    disable_title = true,
    preview_position = "left",
    preview = {
      width = 40,
      height = 60,
      border = "single",
      style = "minimal",
      position = "bottom", -- 'top', 'bottom', 'left', 'right'
    },

    -- Default highlights (must be a valid :highlight)
    highlight = {
      current = "Title", -- default Number
      hidden = "StatusLineNC", -- default Statement
      split = "WarningMsg", -- default Function
      alternate = "StatusLine", -- default String
      unlisted = "Error", -- default ErrorMsg
      filename = "StatusLine", -- if set highlights the filename. Default nil
    },

    -- Default symbols
    symbols = {
      current = "C", -- default 
      split = "S", -- default 
      alternate = "A", -- default 
      locked = "L", -- default 
      ro = "R", -- default 
      edited = "E", -- default 
      terminal = "T", -- default 
      default_file = "D", -- Filetype icon if not present in nvim-web-devicons. Default 
    },

    -- Keymaps
    keymap = {
      close = "<c-d>", -- Close buffer. Default D
      jump = "<space>", -- Jump to buffer. Default <cr>
      h_split = "h", -- Horizontally split buffer. Default s
      v_split = "v", -- Vertically split buffer. Default v
      preview = "p", -- Open buffer preview. Default P
      toggle_unlisted = "U", -- Show closed (unlisted) buffers. Default u
      switch_to = "<CR>", -- switch to buffer if opened otherwise open it. Default <S-CR>
    },

    openCommands = {
      window = "b%s",
      vsplit = "vert sb %s",
      hsplit = "sb %s",
      tab = "tab sb %s",
    },
  },
}
