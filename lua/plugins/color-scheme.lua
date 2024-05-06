return {
  "projekt0n/github-nvim-theme",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("github-theme").setup({
      options = {
        transparent = true,
        dim_inactive = false,
      },
      palettes = {
        github_light_default = {
          orange = "#F8F9FA",
        },
      },
      specs = {
        github_light = {
          -- bg0 = "#FF0000", -- works, set leader menu
          -- bg1 = "#FF0000", -- works, sets status line
          -- bg3 = "#FF0000", -- works, set cursor line
          syntax = { -- Syntax works without anything in addition
            builtin1 = "#C92785",
            -- builtin0 = "#C92785",
            -- builtin2 = "#C92785",
            type = "#707174",
            const = "#C92785",
            string = "#B31512",
            -- field = "#00FF00",
            -- ident = "#00FF00",
            -- variable = "#00FF00",
            -- bracket = "#309331",
            func = "#202124",
            keyword = "#175ABC", -- This works
            comment = "#137333", -- This works
          },
        },
      },
      groups = {
        github_light = {
          -- Normal = { bg = "#F8F9FA" },
          -- NormalFloat = { bg = "#FFFFFF" },
        },
      },
    })
    vim.cmd("colorscheme github_light")
    vim.cmd("set nolist")
  end,
}
