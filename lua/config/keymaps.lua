-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("n", "n", "h")
keymap.set("n", "u", "k")
keymap.set("n", "i", "l")
keymap.set("n", "e", "j")

keymap.set("n", "h", "n")
keymap.set("n", "k", "u")
keymap.set("n", "l", "i")
keymap.set("n", "j", "e")

keymap.set("v", "n", "h")
keymap.set("v", "u", "k")
keymap.set("v", "i", "l")
keymap.set("v", "e", "j")

keymap.set("v", "h", "n")
keymap.set("v", "k", "u")
keymap.set("v", "l", "i")
keymap.set("v", "j", "e")

-- Move to window using the <ctrl> hjkl keys using tmux navigator
keymap.set("n", "<C-n>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Go to left window" })
keymap.set("n", "<C-e>", "<cmd>TmuxNavigateDown<cr>", { desc = "Go to lower window" })
keymap.set("n", "<C-u>", "<cmd>TmuxNavigateUp<cr>", { desc = "Go to upper window" })
keymap.set("n", "<C-i>", "<cmd>TmuxNavigateRight<cr>", { desc = "Go to right window" })

-- Select all
keymap.set("n", "<leader>a", "gg<S-v>G", { desc = "Select all text" })

-- Show special chars
keymap.set("n", "<leader>shc", ":set list<CR>", { desc = "Show special characters" })

-- Hide special chars
keymap.set("n", "<leader>hhc", ":set nolist<CR>", { desc = "Hide special characters" })

-- remove ending blank spaces from each line in document
keymap.set("n", "<leader>res", ":%s/\\s\\+$//<CR>", { desc = "Remove blank space at end of all lines" })
