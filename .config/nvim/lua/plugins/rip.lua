return {
  "chrisgrieser/nvim-rip-substitute",
  opts = {
    popupWin = {
      position = "top", ---@type "top"|"bottom"
    },
  },
  keys = {
    {
      "g/",
      function()
        require("rip-substitute").sub()
      end,
      mode = { "n", "x" },
      desc = "Rip Substitute",
    },
  },
}
