-- if true then
--   return {}
-- end
-- disable manual config
return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = {
    "meuter/lualine-so-fancy.nvim",
  },
  opts = function(_, opts)
    local icons = LazyVim.config.icons
    -- opts.options.theme = "tokyonight-storm"
    opts.options.theme = "auto"
    opts.options.component_separators = { left = ">", right = "⏽" }
    opts.options.section_separators = ""
    -- opts.options.refresh.statusline = 100
    opts.sections.lualine_a = { { "fancy_mode", width = 1 } }
    -- opts.sections.lualine_a = {  "mode"}
    opts.sections.lualine_b = {
      { "fancy_branch" },
      {
        "diagnostics",
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
      },
      -- { "fancy_diff" },
    }
    opts.sections.lualine_c = {
      LazyVim.lualine.root_dir(),
      -- { "fancy_cwd", substitute_home = true },
      -- {
      --   "diagnostics",
      --   symbols = {
      --     error = icons.diagnostics.Error,
      --     warn = icons.diagnostics.Warn,
      --     info = icons.diagnostics.Info,
      --     hint = icons.diagnostics.Hint,
      --   },
      -- },
      {
        "filetype",
        icon_only = true,
        separator = "",
        padding = { left = 1, right = 0 },
      },
      -- {
      --   "navic",
      --   -- color_correction = "dynamic",
      --   padding = { right = 0 },
      -- },
    }
    -- https://github.com/LazyVim/LazyVim/pull/4231
    -- table.insert(opts.sections.lualine_c, { "navic", color_correction = "dynamic" })
    -- table.insert(opts.sections.lualine_c, {
    --   function()
    --     return require("nvim-navic").get_location()
    --   end,
    --   cond = function()
    --     return package.loaded["nvim-navic"] and require("nvim-navic").is_available()
    --   end,
    -- })
    -- remove timestamp
    opts.sections.lualine_x = {
      { "fancy_macro" },
      -- {
      --   function()
      --     return "  " .. require("dap").status()
      --   end,
      --   cond = function()
      --     return package.loaded["dap"] and require("dap").status() ~= ""
      --   end,
      --   color = function()
      --     return LazyVim.ui.fg("Debug")
      --   end,
      -- },
      -- { "fancy_diagnostics" },
      {
        "diff",
        symbols = {
          added = icons.git.added,
          modified = icons.git.modified,
          removed = icons.git.removed,
        },
        source = function()
          local gitsigns = vim.b.gitsigns_status_dict
          if gitsigns then
            return {
              added = gitsigns.added,
              modified = gitsigns.changed,
              removed = gitsigns.removed,
            }
          end
        end,
      },
      { "fancy_searchcount" },
      -- { "fancy_location" },
    }
    opts.sections.lualine_y = {
      -- { "fancy_filetype" },
      { "location", padding = { left = 0, right = 1 } },
    }
    opts.sections.lualine_z = { { "fancy_lsp_servers" } }
  end,
}
