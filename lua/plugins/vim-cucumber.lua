return {
  "tpope/vim-cucumber",
  ft = { "feature" }, -- Load only for feature files
  enabled = false,
  config = function()
    vim.g.cucumber_step_definitions = {
      "features/steps/**/*.ts",
      "test/v1/acceptance/*.step.ts",
    }
  end,
}
