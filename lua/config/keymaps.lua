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

-- Select all
keymap.set("n", "<leader>a", "gg<S-v>G", { desc = "Select all text" })

-- Show special chars
keymap.set("n", "<leader>shc", ":set list<CR>", { desc = "Show special characters" })

-- Hide special chars
keymap.set("n", "<leader>hhc", ":set nolist<CR>", { desc = "Hide special characters" })

-- remove ending blank spaces from each line in document
keymap.set("n", "<leader>res", ":%s/\\s\\+$//<CR>", { desc = "Remove blank space at end of all lines" })
