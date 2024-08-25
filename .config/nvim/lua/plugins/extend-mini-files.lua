return {
  {
    "echasnovski/mini.files",
    keys = {
      {
        "<leader>E",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (directory of current file)",
      },
      {
        "<leader>e",
        function()
          require("mini.files").open(vim.uv.cwd(), true)
        end,
        desc = "Open mini.files (cwd)",
      },
      {
        "<leader>fm",
        false,
      },
      {
        "<leader>fM",
        false,
      },
      -- {
      --   "<leader>fm",
      --   function()
      --     require("mini.files").open(LazyVim.root(), true)
      --   end,
      --   desc = "Open mini.files (root)",
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
        use_as_default_explorer = true,
      },
      mappings = {
        -- enter and close mini.file
        go_in_plus = "<cr>",
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
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
