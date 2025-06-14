return {
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      -- Configuration here, or leave empty to use defaults
      keymaps = {
        normal = "as",
        normal_cur = "ass",
        normal_line = "aS",
        normal_cur_line = "aSS",
      },
    })
  end,
}
