return {
  {
    "echasnovski/mini.files",
    keys = {
      {
        "<leader>e",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (directory of current file)",
      },
      {
        "<leader>E",
        function()
          require("mini.files").open(vim.uv.cwd(), true)
        end,
        desc = "Open mini.files (cwd)",
      },
      { "<leader>fm", false },
      { "<leader>fM", false },
      -- {
      --   "<leader>fo",
      --   function()
      --     local mf = require("mini.files")
      --     if not mf.close() then
      --       mf.open(vim.api.nvim_buf_get_name(0))
      --       mf.reveal_cwd()
      --     end
      --   end,
      --   desc = "mini current file",
      -- },
    },
    opts = {
      windows = {
        width_nofocus = 20,
        preview = true,
        width_focus = 40,
        width_preview = 100,
      },
      options = {
        use_as_default_explorer = false,
      },
      mappings = {
        -- enter and close mini.file
        go_in_plus = "<cr>",
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = true,
    -- opts = {
    --   filesystem = {
    --     hijack_netrw_behavior = " disabled",
    --   },
    -- },
    -- opts = {
    --   filesystem = {
    --     filtered_items = {
    --       visible = false,
    --       show_hidden_count = true,
    --       hide_dotfiles = false,
    --       hide_gitignored = true,
    --       hide_by_name = {
    --         -- '.git',
    --         -- '.DS_Store',
    --         -- 'thumbs.db',
    --       },
    --       never_show = {},
    --     },
    --   },
    -- },
    keys = {
      { "<leader>e", false },
      { "<leader>E", false },
      { "<leader>be", false },
    },
  },
}
