return {
  "nvim-cmp",
  opts = function(_, opts)
    for _, source in ipairs(opts.sources) do
      if source.name == "snippets" then
        source.keyword_length = 2 -- avoid uuid auto complete everywhere
        break
      end
    end
  end,
  keys = {
    { "<Tab>", mode = { "i", "s" }, false },
    { "<S-Tab>", mode = { "i", "s" }, false },
    {
      "<C-j>",
      function()
        return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>"
      end,
      expr = true,
      silent = true,
      mode = { "i", "s" },
    },
    {
      "<C-k>",
      function()
        return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>"
      end,
      expr = true,
      silent = true,
      mode = { "i", "s" },
    },
  },
}
