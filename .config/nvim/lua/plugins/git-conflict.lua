if true then
  return {}
end
return {
  "akinsho/git-conflict.nvim",
  lazy = true,
  opts = {
    default_mappings = {
      ours = "<leader>ho",
      theirs = "<leader>ht",
      none = "<leader>h0",
      both = "<leader>hb",
      next = "]x",
      prev = "[x",
    },
    highlights = { -- They must have background color, otherwise the default color will be used
      current = "DiffDelete",
      incoming = "DiffChange",
    },
  },
  keys = {
    {
      "<leader>gx",
      "<cmd>GitConflictListQf<cr>",
      desc = "List Conflicts",
    },
    {
      "<leader>gr",
      "<cmd>GitConflictRefresh<cr>",
      desc = "Refresh Conflicts",
    },
  },
}
