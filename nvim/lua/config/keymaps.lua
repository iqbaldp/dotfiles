-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = false })

-- VSCode-like search mappings
vim.keymap.set("n", "<C-f>", "/", { desc = "Search in current file" })
vim.keymap.set("n", "<C-g>", "<cmd>Telescope live_grep<cr>", { desc = "Global search in project" })
vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "Global search in project" })

-- Nano-like Ctrl+K (delete from cursor to end of line)
vim.keymap.set("n", "<C-k>", "d$", { desc = "Delete to end of line" })
vim.keymap.set("i", "<C-k>", "<C-o>d$", { desc = "Delete to end of line" })
