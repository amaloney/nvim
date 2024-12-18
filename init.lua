vim.g.mapleader = " "
vim.diagnostic.config({ virtual_text = false })

vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.background = "dark"
vim.opt.backspace = "indent,eol,start"
vim.opt.backup = false
vim.opt.breakindent = true
--vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 1
vim.opt.colorcolumn = "101"
vim.opt.completeopt = { "menuone", "preview", "noinsert", "noselect" }
vim.opt.conceallevel = 0
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.history = 10000
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.infercase = true
vim.opt.linebreak = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.pumheight = 10
vim.opt.ruler = true
vim.opt.shiftwidth = 4
vim.opt.showmatch = true
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.softtabstop = 4
vim.opt.spell = true
vim.opt.spelllang = "en_us"
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.textwidth = 100
vim.opt.timeoutlen = 1000
vim.opt.undofile = true
vim.opt.updatetime = 300
vim.opt.whichwrap:append("<,>,h,l,[,]")
vim.opt.wildignore = "*.o,*~,*.pyc"
vim.opt.wildmenu = true
vim.opt.wildmode = "list:longest,full"
vim.opt.writebackup = false

local keymap = vim.api.nvim_set_keymap
local options = { noremap = true }
keymap("i", "jj", "<Esc>", options)
keymap("n", "<C-h>", "<CMD>tabp<CR>", options)
keymap("n", "<C-l>", "<CMD>tabn<CR>", options)
keymap("n", "<C-n>", "<CMD>tabnew<CR>", options)
keymap("n", "<leader>h", "<CMD>nohlsearch<CR>", options)
keymap("n", "<leader>bs", "<CMD>JABSOpen<CR>", options)
keymap("n", "<leader>dd", "<CMD>DogeGenerate<CR>", options)

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
autocmd("BufEnter", {
    pattern = "*",
    command = "set fo-=c fo-=r fo-=o",
})
augroup("setIndent", { clear = true })
autocmd("Filetype", {
    group = "setIndent",
    pattern = {
        "css",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "lua",
        "markdown",
        "markdownreact",
        "scss",
        "typescript",
        "typescriptreact",
        "vim",
        "xhtml",
        "xml",
        "yaml",
    },
    command = "setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab",
})

vim.cmd([[autocmd VimEnter * Neotree toggle left]])
vim.cmd([[
  filetype indent on
  filetype plugin on
  syntax on
]])
vim.cmd([[set nofoldenable]])
-- vim.cmd([[command JSON :%!python -m json.tool]])
-- vim.cmd([[command HTML :%!tidy -q -i --show-errors 0]])
-- vim.cmd([[let g:python3_host_prog = $CONDA_PREFIX . "/bin/python"]])

require("perovskite.lazy")

vim.api.nvim_create_user_command("FormatDisable", function(args)
    if args.bang then
        -- FormatDisable! will disable formatting just for this buffer
        vim.b.disable_autoformat = true
    else
        vim.g.disable_autoformat = true
    end
end, {
    desc = "Disable autoformat-on-save",
    bang = true,
})
vim.api.nvim_create_user_command("FormatEnable", function()
    vim.b.disable_autoformat = false
    vim.g.disable_autoformat = false
end, {
    desc = "Re-enable autoformat-on-save",
})
