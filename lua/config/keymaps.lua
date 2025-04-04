-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- When doing J keep the cursor in place
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines", silent = true })

-- -- Use tabs for moving through windows
-- vim.keymap.set("n", "<Tab>", "<C-w>w", { desc = "Go to Next Window" })
-- vim.keymap.set("n", "<S-Tab>", "<C-w>W", { desc = "Go to Previous Window" })

-- -- Centering when moving
-- vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move cursor down 1/2 page" })
-- vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move cursor up 1/2 page" })
-- vim.keymap.set("n", "n", "nzz", { desc = "Next Search Result" })
-- vim.keymap.set("n", "N", "Nzz", { desc = "Prev Search Result" })
-- vim.keymap.set("n", "*", "*zz", { desc = "Next Search Result" })
-- vim.keymap.set("n", "#", "#zz", { desc = "Prev Search Result" })
