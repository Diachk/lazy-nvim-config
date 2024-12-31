-- Define a convenience function for feeding keys
local function feed_keys(keys, mode)
  -- Convert special notation (e.g., <Esc>) to internal key codes
  local termcodes = vim.api.nvim_replace_termcodes(keys, true, false, true)
  -- Feed the keys into Neovim
  vim.api.nvim_feedkeys(termcodes, mode, false)
end

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
-- Reset home :cd %:p:h
vim.keymap.set("n", "<leader>rd", function()
  vim.cmd("cd %:p:h")
  vim.notify("Root directory set to %:p:h", vim.log.levels.INFO)
end, { desc = "Set current directory as root directory" })
-- Yank current file name to clipboard
vim.keymap.set("n", "<leader>fy", function()
  vim.cmd("let @+ = expand('%')")
  vim.notify("Yanked to system clipboard " .. vim.fn.expand("%"), vim.log.levels.INFO)
end, { desc = "Yank current file path to system clipboard" })
-- Yank selected text to clipboard
vim.keymap.set("v", "<leader>y", '"*y', { desc = "Yank to system clipboard" })
-- jq
vim.keymap.set("n", "<leader>jq", ":%!jq<CR>", { desc = "Stream current buffer to jq (json.parse current buffer)" })
-- Telescope resume last search
vim.keymap.set("n", "<leader><space>", function()
  vim.cmd("Telescope resume")
end, { desc = "Telescope resume last search" })
-- Delete mark
vim.keymap.set("n", "<leader>dm", ":delmarks ", { desc = "Stream current buffer to jq (json.parse current buffer)" })
-- Close buffler split
vim.keymap.set("n", "<leader>bx", ":quit<CR>", { desc = "Close focused split buffer" })
-- Jump to implementation
vim.keymap.set("n", "<leader>gi", "<cmd>Telescope lsp_implementations<cr>", { desc = "Telescope Go to implementation" })
-- Set filte-type
vim.keymap.set("n", "<leader>ft", ":set filetype=", { desc = "Set file type" })
-- Tidy code
vim.keymap.set("n", "<leader>ct", function()
  vim.lsp.buf.code_action({
    context = { only = { "source.removeUnused.ts" }, diagnostics = {} },
    apply = true,
  })
  vim.lsp.buf.code_action({
    context = { only = { "source.addMissingImports.ts" }, diagnostics = {} },
    apply = true,
  })
  vim.defer_fn(function()
    LazyVim.format({ force = true })
  end, 500)
end, { desc = "Tidy typescript code" })
-- AI implementation from comment
vim.keymap.set("v", "<leader>ai", function()
  vim.cmd("AvanteEdit")
  feed_keys("Do what the first comment says. Do nothing if there is no actionable comment.<C-s>", "i")
end, { desc = "AI implement what the comment says" })

-- Oil file explorer
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
