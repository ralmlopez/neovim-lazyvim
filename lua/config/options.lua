-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt -- for conciseness

-- tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smarttab = true

-- indentation
opt.smartindent = true
opt.autoindent = true

-- line wrap
opt.wrap = false

-- split window behavior
opt.splitright = true
opt.splitbelow = true

-- include '-' to be recognized as part of a word
opt.iskeyword:append("-")

-- search
opt.hlsearch = true
opt.incsearch = true
opt.smartcase = true

-- show cursor line
opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor
opt.scrolloff = 8

-- include '@' as being part of a file name or path
opt.isfname:append("@-@")

-- highlight column in editor
opt.colorcolumn = "120"

-- allow backspace over these
opt.backspace = "indent,eol,start"

opt.list = false
-- when showing hidden characters what they should show up as
opt.listchars = { eol = "¬", tab = ">·", trail = "~", extends = ">", precedes = "<", space = "␣" }

-- disable formatting on save
vim.g.autoformat = false
