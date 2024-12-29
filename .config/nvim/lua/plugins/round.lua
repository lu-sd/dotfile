if true then
  return {}
end
-- if true then
--   return {}
-- end
return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  -- {
  --   "folke/noice.nvim",
  --   opts = {
  --     presets = {
  --       lsp_doc_border = true,
  --     },
  --   },
  -- },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- keys go here
      opts.diagnostics = {
        float = {
          border = "rounded",
        },
      }
    end,
  },
}
