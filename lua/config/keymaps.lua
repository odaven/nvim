-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- When doing J keep the cursor in place
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines", silent = true })
