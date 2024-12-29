-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--terminal
-- vim.keymap.del("t", "<esc><esc>")
-- vim.keymap.set("t", "<esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
local key = vim.keymap
key.del("n", "<c-/>")

key.set("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })
key.set("i", "<C-a>", "<C-r>0", { noremap = true, silent = true })
key.set("i", "<C-j>", "<Nop>", { noremap = true, silent = true })

key.set("i", "jk", "<ESC>", { noremap = true, silent = true })
key.set("n", "<leader>l", "V$%", { desc = "block selection", noremap = true, silent = true })

key.set("n", "<leader>hh", function()
  Snacks.notifier.show_history()
end, { desc = "show history" })

function OpenTerminalRightSplit()
  vim.cmd("vsplit")
  vim.cmd("term")
  vim.cmd("startinsert")
end

vim.api.nvim_create_user_command("OpenTermSplit", OpenTerminalRightSplit, {})

key.set("n", "<leader><bs>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

-- formatting
key.set({ "n", "v" }, "<leader><space>", function()
  LazyVim.format({ force = true })
end, { desc = "Format" })

-- vim-tmux-navigator
-- vim.keymap.set({ "i", "n", "v" }, "<C-k>", "<cmd>TmuxNavigateUp<cr><esc>", { desc = "Move cursor to top pane" })
-- vim.keymap.set({ "i", "n", "v" }, "<C-j>", "<cmd>TmuxNavigateDown<cr><esc>", { desc = "Move cursor to bottom pane" })
-- vim.keymap.set({ "i", "n", "v" }, "<C-h>", "<cmd>TmuxNavigateLeft<cr><esc>", { desc = "Move cursor to left pane" })
-- vim.keymap.set({ "i", "n", "v" }, "<C-l>", "<cmd>TmuxNavigateRight<cr><esc>", { desc = "Move cursor to right pane" })
-- vim.keymap.set(
--   { "i", "n", "v" },
--   "<C-\\>",
--   "<cmd>TmuxNavigatePrevious<cr><esc>",
--   { desc = "Move cursor to previous pane" }
-- )
