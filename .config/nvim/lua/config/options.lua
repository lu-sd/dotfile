-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.pumblend = 0
opt.scrolloff = 10
opt.winbar = "  %m %f"
opt.clipboard = "unnamedplus"
opt.cursorline = false
opt.showcmd = false
-- vim.cmd([[highlight LineNr guifg=#ff9900]])
-- vim.cmd("hi LineNr guifg=#ff9901")
-- https://github.com/LazyVim/LazyVim/issues/556
local float = { focusable = true, style = "minimal", border = "rounded" }
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, float)
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, float)
