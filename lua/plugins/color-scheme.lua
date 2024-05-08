return {
  "miikanissi/modus-themes.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- Default options
    require("modus-themes").setup({
      -- Theme comes in two styles `modus_operandi` and `modus_vivendi`
      -- `auto` will automatically set style based on background set with vim.o.background
      style = "auto",
      variant = "default", -- Theme comes in four variants `default`, `tinted`, `deuteranopia`, and `tritanopia`
      transparent = true, -- Transparent background (as supported by the terminal)
      dim_inactive = false, -- "non-current" windows are dimmed
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
      },

      --- You can override specific color groups to use other groups or a hex color
      --- function will be called with a ColorScheme table
      ---@param colors ColorScheme
      on_colors = function(colors)
        colors.bg_active = "#ffffff" -- changed from #e0e0e0, we also like #f8f9fa
        colors.visual = "#72f64a"
      end,

      --- You can override specific highlights to use other groups or a hex color
      --- function will be called with a Highlights and ColorScheme table
      ---@param highlights Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors)
        highlights.Pmenu = { bg = colors.bg_alt }
        highlights.PmenuSel = { bg = colors.bg_hl_line }
        highlights.PmenuExtra = { bg = colors.bg_alt }
        highlights.FloatBorder = { bg = colors.bg_alt }
        highlights.NormalFloat = { bg = "#f8f9fa" }
        highlights.CursorLine = { bg = "#effaff" }
        highlights.Directory = { fg = "#000000" }
      end,
    })

    vim.cmd("colorscheme modus")
    vim.cmd("set nolist")
  end,
}
