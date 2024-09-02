return {
  "nvim-cmp",
  opts = function(_, opts)
    for _, source in ipairs(opts.sources) do
      if source.name == "snippets" then
        source.keyword_length = 2
        break
      end
    end
  end,
  keys = {
    {
      "<Tab>",
      mode = { "i", "s" },
      false,
    },
    {
      "<S-Tab>",
      mode = { "i", "s" },
      false,
    },
    {
      "<C-,>",
      function()
        return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "<Tab>"
      end,
      expr = true,
      silent = true,
      mode = { "i", "s" },
    },
    {
      "<C-.>",
      function()
        return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<S-Tab>"
      end,
      expr = true,
      silent = true,
      mode = { "i", "s" },
    },
  },
}
