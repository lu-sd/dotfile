-- bootstrap lazy.nvim, LazyVim and your plugins
-- Temp fix for 0.10.3 regression with :inspect command
-- https://github.com/neovim/neovim/issues/31675#issuecomment-2558405042
vim.hl = vim.highlight
require("config.lazy")
