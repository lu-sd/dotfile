return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- required by telescope
    "MunifTanjim/nui.nvim",

    -- optional
    "nvim-treesitter/nvim-treesitter",
    "rcarriga/nvim-notify",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = "leetcode.nvim" ~= vim.fn.argv()[1],
  opts = {
    arg = "leetcode.nvim",
    lang = "typescript",
    cn = { -- leetcode.cn
      enabled = true, ---@type boolean
      translator = false, ---@type boolean
      translate_problems = false, ---@type boolean
    },
  },
}
