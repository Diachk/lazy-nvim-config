return {
  "folke/flash.nvim",
  event = "VeryLazy",
  vscode = true,
  config = function()
    -- disable default flash mappings
    vim.keymap.del({ "n", "x", "o" }, "s")
    vim.keymap.del({ "n", "x", "o" }, "S")
    vim.keymap.del("o", "r")
    vim.keymap.del({ "x", "o" }, "R")
    vim.keymap.del({ "c" }, "<c-s>")
  end,
  ---@type Flash.Config
  opts = {},
    -- stylua: ignore
    keys = {
      { "ss", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      -- { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      -- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      -- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
}
