-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.wrap = true
vim.g.codeium_os = "Darwin"
vim.g.codeium_arch = "arm64"

-- Show hidden files in file explorer
vim.g.netrw_hide = 0
vim.opt.wildignore:remove(".DS_Store")
vim.opt.wildignore:remove(".*")
