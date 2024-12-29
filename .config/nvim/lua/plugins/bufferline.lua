if true then
  return {}
end
return {
  "akinsho/bufferline.nvim",
  keys = {
    {
      "<LEADER>bs",
      function()
        require("bufferline").pick()
      end,
      desc = "Select Buffer",
    },
    {
      "<leader><BS>",
      function()
        Snacks.bufdelete()
      end,
      desc = "Del buffer",
    },
  },
  opts = {
    options = {
      show_buffer_close_icons = false,
    },
  },
}
