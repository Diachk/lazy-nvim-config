return {
  "tpope/vim-fugitive",
  -- Optional: Configure lazy loading
  -- cmd = { "Git", "Gedit", "Gstatus", "Gdiffsplit", "Gblame" },
  keys = { "<leader>gi" }, -- Example key mapping for lazy loading
  config = function()
    -- Optional: Add keymaps or settings for Vim Fugitive here
    vim.keymap.set("n", "<leader>gi", ":Git ", { desc = "Git Status" })
  end,
}
