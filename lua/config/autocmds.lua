-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

local api = vim.api
local setCommentStringGrp = augroup("set-commentstring-ag")

-- Enable // as the default for csharp comments.
api.nvim_create_autocmd({ "FileType" }, {
  group = setCommentStringGrp,
  pattern = { "cs" },
  command = "lua vim.api.nvim_buf_set_option(0, 'commentstring', '// %s')",
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})

-- Set color column color
vim.cmd([[hi ColorColumn guibg='#343434' ]])

-- set cursor line color
vim.cmd([[hi CursorLine guibg='#313131' ]])
