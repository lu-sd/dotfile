-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--terminal

vim.keymap.set("t", "<esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
vim.keymap.del("t", "<esc><esc>")
vim.keymap.del("n", "<c-/>")
vim.keymap.del("n", "<leader>l")
vim.keymap.set("i", "<C-a>", "<C-r>0", { noremap = true, silent = true })
-- leetcode
vim.keymap.set("n", "<leader>ll", "<cmd>Leet list<cr>", { desc = "leetcode list" })
vim.keymap.set("n", "<leader>ls", "<cmd>Leet submit<cr>", { desc = "leetcode submit" })
vim.keymap.set("n", "<leader>lr", "<cmd>Leet run<cr>", { desc = "leetcode run" })
--
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

function OpenTerminalRightSplit()
  vim.cmd("vsplit")
  vim.cmd("term")
  vim.cmd("startinsert")
end

vim.api.nvim_create_user_command("OpenTermSplit", OpenTerminalRightSplit, {})

-- vim-tmux-navigator
vim.keymap.set({ "i", "n", "v" }, "<C-k>", "<cmd>TmuxNavigateUp<cr><esc>", { desc = "Move cursor to top pane" })
vim.keymap.set({ "i", "n", "v" }, "<C-j>", "<cmd>TmuxNavigateDown<cr><esc>", { desc = "Move cursor to bottom pane" })
vim.keymap.set({ "i", "n", "v" }, "<C-h>", "<cmd>TmuxNavigateLeft<cr><esc>", { desc = "Move cursor to left pane" })
vim.keymap.set({ "i", "n", "v" }, "<C-l>", "<cmd>TmuxNavigateRight<cr><esc>", { desc = "Move cursor to right pane" })
vim.keymap.set(
  { "i", "n", "v" },
  "<C-\\>",
  "<cmd>TmuxNavigatePrevious<cr><esc>",
  { desc = "Move cursor to previous pane" }
)