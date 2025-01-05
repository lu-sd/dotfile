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
          root_dir = function(...)
            require("lspconfig").util.root_pattern("tailwind.config.cjs", "tailwind.config.js", "postcss.config.js")(
              ...
            )
          end,
        },

        denols = {
          on_attach = function(client, _)
            client.server_capabilities.semanticTokensProvider = false
          end,
          mason = false,
          init_options = {
            lint = false,
            unstable = true,
          },
          -- filetypes = { "typescript", "typescriptreact" },
          root_dir = require("lspconfig").util.root_pattern("deno.json"),
        },

        vtsls = {
          mason = false,
          on_attach = function(client, _)
            client.server_capabilities.semanticTokensProvider = false
          end,
          root_dir = require("lspconfig").util.root_pattern("package.json"),
        },

        gopls = {
          mason = false,
          on_attach = function(client, _)
            client.server_capabilities.semanticTokensProvider = false
          end,
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
-- https://github.com/LazyVim/LazyVim/discussions/2397
-- disable semanticTokensProvider
