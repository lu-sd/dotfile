return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      diagnostics = {
        Opts = {
          Float = {
            source = true,
          },
        },
      },
      inlay_hints = { enabled = false },
      servers = {
        tailwindcss = {
          mason = false,
          -- exclude a filetype from the default_config
          filetypes_exclude = { "markdown", "typescript", "javascript" },
          root_dir = function(fname)
            local root_pattern =
              require("lspconfig").util.root_pattern("tailwind.config.cjs", "tailwind.config.js", "postcss.config.js")
            return root_pattern(fname)
          end,
        },
        denols = {
          mason = true,
          filetypes = { "typescript", "typescriptreact", "javascript" },
          root_dir = function(...)
            return require("lspconfig").util.root_pattern("deno.jsonc", "deno.json")(...)
          end,
        },
        vtsls = {
          mason = false,
          root_dir = require("lspconfig").util.root_pattern("package.json"),
        },
        gopls = {
          mason = false,
          settings = {
            gopls = {
              analyses = {
                fieldalignment = false,
              },
            },
          },
        },
      },
    },
  },
  -- remove C-k
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()

      -- disable signature help in insert mode
      keys[#keys + 1] = { "<C-k>", false, mode = "i" }
    end,
  },
}
