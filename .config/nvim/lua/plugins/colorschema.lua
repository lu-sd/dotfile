return {
  {
    "LazyVim/LazyVim",
    keys = {
      { "<leader>l", false },
    },
    -- version = "13.9.0",
    opts = {
      colorscheme = "gruvbox-material",
      -- colorscheme = "tokyonight",
      -- colorscheme = "catppuccin",
    },
  },
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    enabled = true, -- switch to catppuccin
    -- priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_disable_italic_comment = 1
      vim.g.gruvbox_material_visual = "blue background"
      vim.g.gruvbox_material_transparent_background = 0
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_menu_selection_background = "purple"
      vim.g.gruvbox_material_ui_contrast = "high"
      vim.g.gruvbox_material_float_style = "bright"
      vim.g.gruvbox_material_statusline_style = "material"
      vim.g.gruvbox_material_diagnostic_virtual_text = "highlighted"
      vim.g.gruvbox_material_cursor = "auto"
      vim.g.gruvbox_material_sign_column_background = "none"
      vim.g.gruvbox_material_diagnostic_text_highlight = 1
      vim.g.gruvbox_material_better_performance = 1
      -- vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "catppuccin/nvim",
    enabled = false,
    lazy = true,
    name = "catppuccin",
    -- keys = {
    --   {
    --     "<leader>uC",
    --     LazyVim.pick("colorscheme", { enable_preview = true }),
    --     desc = "Colorscheme with preview",
    --   },
    -- },
    opts = {
      custom_highlights = function(colors)
        return {
          WinSeparator = { fg = colors.surface2 }, -- Set the border color
        }
      end,
      flavour = "macchiato",
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
        noice = false,
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
    -- lazy = true,
    enabled = true,
    opts = {
      style = "moon",
      on_colors = function(colors)
        colors.border = "#64748b"
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
