-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

-- Move to window using the <ctrl> hjkl keys using tmux navigator
keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Go to left window" })
keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Go to lower window" })
keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Go to upper window" })
keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Go to right window" })
