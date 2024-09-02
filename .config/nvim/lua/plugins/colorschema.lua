return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    keys = {
      {
        "<leader>uC",
        LazyVim.pick("colorscheme", { enable_preview = true }),
        desc = "Colorscheme with preview",
      },
    },
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        grug_far = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      style = "night",
      on_colors = function(colors)
        colors.border = "#c0caf5"
      end,
    },
  },
  -- {
  --   "nvim-zh/colorful-winsep.nvim",
  --   disable = true,
  --   config = true,
  --   event = { "WinLeave" },
  -- },
}
