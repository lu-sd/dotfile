return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = {
    "meuter/lualine-so-fancy.nvim",
  },
  opts = function(_, opts)
    local icons = LazyVim.config.icons
    opts.options.theme = "auto"
    opts.options.component_separators = { left = ">", right = "⏽" }
    opts.options.section_separators = ""
    opts.sections.lualine_a = {
      -- { "fancy_mode" }, --, width = 5 },
      { "mode" },
    }
    opts.sections.lualine_c = {
      LazyVim.lualine.root_dir(),
      {
        "diagnostics",
        symbols = {
          error = icons.diagnostics.Error,
          warn = icons.diagnostics.Warn,
          info = icons.diagnostics.Info,
          hint = icons.diagnostics.Hint,
        },
      },
      {
        "filetype",
        icon_only = true,
        separator = "",
        padding = { left = 1, right = 0 },
      },
      {
        "navic",
        color_correction = "dynamic",
        padding = { right = 0 },
      },
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
    opts.sections.lualine_z = { { "fancy_lsp_servers" } }
  end,
}
