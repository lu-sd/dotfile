local logo = [[

    ██╗   ██╗██╗███╗   ███╗
    ██║   ██║██║████╗ ████║
    ██║   ██║██║██╔████╔██║
    ╚██╗ ██╔╝██║██║╚██╔╝██║
     ╚████╔╝ ██║██║ ╚═╝ ██║
      ╚═══╝  ╚═╝╚═╝     ╚═╝
    ]]

logo = string.rep("\n", 3) .. logo .. "\n\n"

return {
  {
    "nvimdev/dashboard-nvim",
    opts = {
      config = {
        header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = 'lua LazyVim.pick()()',                           desc = " Find File",       icon = " ", key = "f" },
          { action = "ene | startinsert",                              desc = " New File",        icon = " ", key = "n" },
          -- { action = 'lua LazyVim.pick("oldfiles")()',                 desc = " Recent Files",    icon = " ", key = "r" },
          { action = 'lua LazyVim.pick("live_grep")()',                desc = " Find Text",       icon = " ", key = "g" },
          { action = 'lua LazyVim.pick.config_files()()',              desc = " Config",          icon = " ", key = "c" },
          { action = 'lua require("persistence").load()',              desc = " Restore Session", icon = " ", key = "s" },
          { action = function() vim.api.nvim_input("<cmd>qa<cr>") end, desc = " Quit",            icon = " ", key = "q" },
        },
      },
    },
  },
}
