-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>fl", function()
  vim.cmd("Neotree filesystem reveal")
end, { desc = "Explorer Neotree (current buffer)" })
-- vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Git preview (current line)" })
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Git blame (current line)" })
vim.keymap.set("n", "<leader>gP", function()
  vim.cmd("!gh pr view -w")
end, { desc = "Github browse (pull request)" })
vim.keymap.set("n", "<leader>gB", function()
  local ln = vim.fn.line(".")
  vim.cmd("!gh browse %" .. ":" .. ln)
end, { desc = "Github browse (current line)" })
vim.keymap.set("n", "<leader>gR", function()
  vim.cmd("!gh repo view -w")
end, { desc = "Github browse repository" })
-- Yank to clipboard
vim.keymap.set("v", "<leader>y", '"*y', { desc = "Yank to system clipboard" })
-- jq
vim.keymap.set("n", "<leader>jq", ":%!jq<CR>", { desc = "Stream current buffer to jq (json.parse current buffer)" })
-- Telescope resume last search
vim.keymap.set("n", "<leader><space>", function()
  vim.cmd("Telescope resume")
end, { desc = "Telescope resume last search" })
-- Delete mark
vim.keymap.set("n", "<leader>dm", ":delmarks ", { desc = "Stream current buffer to jq (json.parse current buffer)" })
