-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- vim.api.nvim_create_augroup("cursorline_cursorcolumn", { clear = true })
-- vim.api.nvim_create_autocmd("InsertLeave", {
--   group = "cursorline_cursorcolumn",
--   pattern = "*",
--   command = "set cursorline cursorcolumn",
-- })
-- vim.api.nvim_create_autocmd("InsertEnter", {
--   group = "cursorline_cursorcolumn",
--   pattern = "*",
--   command = "set nocursorline nocursorcolumn",
-- })
--
vim.api.nvim_create_augroup("auto_save", { clear = true })
vim.api.nvim_create_autocmd("FocusLost", {
  group = "auto_save",
  pattern = "*",
  command = "wa",
})

local augroup = vim.api.nvim_create_augroup
local autocmds = vim.api.nvim_create_autocmd
augroup("discontinue_comments", { clear = true })
autocmds({ "FileType" }, {
  pattern = { "*" },
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions - "o"
  end,
  group = "discontinue_comments",
  desc = "Dont't continue comments with o/O",
})
