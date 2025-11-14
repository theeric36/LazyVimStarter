-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("x", "p", "pgvy", { desc = "Pasting without replacing clipboard" })
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down", silent = true })
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up", silent = true })
