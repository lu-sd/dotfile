return {
  {
    "echasnovski/mini.operators",
    version = false,
    config = function(_, opts)
      -- https://github.com/echasnovski/nvim/blob/935ca1849601987275805ec45fe8b0c6db41e60a/plugin/20_mini.lua#L219-L226
      local remap = function(mode, lhs_from, lhs_to)
        local keymap = vim.fn.maparg(lhs_from, mode, false, true)
        local rhs = keymap.callback or keymap.rhs
        if rhs == nil then
          error("Could not remap from " .. lhs_from .. " to " .. lhs_to)
        end
        vim.keymap.set(mode, lhs_to, rhs, { desc = keymap.desc })
      end
      remap("n", "gx", "<Leader>ox")
      remap("x", "gx", "<Leader>ox")
      require("mini.operators").setup(opts)
    end,
    opts = {
      replace = {
        prefix = "gp",
        -- Whether to reindent new text to match previous indent
        reindent_linewise = true,
      },
      exchange = {
        prefix = "gx",

        -- Whether to reindent new text to match previous indent
        reindent_linewise = true,
      },

      sort = {
        prefix = "g2",

        -- Function which does the sort
        func = nil,
      },
    },
  },
  {
    "gbprod/yanky.nvim",
    keys = {
      { "gp", mode = { "n", "x" }, false },
    },
  },
}
