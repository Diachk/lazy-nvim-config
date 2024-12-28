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
      transparent = false, -- Transparent background (as supported by the terminal)
      dim_inactive = true, -- "non-current" windows are dimmed
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = false, fg = "#0000b5" },
        functions = {},
        variables = {},
      },

      --- You can override specific color groups to use other groups or a hex color
      --- function will be called with a ColorScheme table
      ---@param colors ColorScheme
      on_colors = function(colors)
        colors.bg_active = "#ffffff" -- changed from #e0e0e0, we also like #f8f9fa
        colors.visual = "#cbf0d3"
      end,

      --- You can override specific highlights to use other groups or a hex color
      --- function will be called with a Highlights and ColorScheme table
      ---@param highlights Highlights
      ---@param colors ColorScheme
      on_highlights = function(highlights, colors)
        highlights.Pmenu = { bg = colors.bg_alt }
        highlights.PmenuSel = { bg = colors.bg_hl_line }
        highlights.PmenuExtra = { bg = colors.bg_alt }
        highlights.FloatBorder = { bg = colors.bg_alt, fg = colors.fg_main }
        highlights.LspFloatWinBorder = { fg = colors.fg_main, bg = colors.bg_main, style = "bold" } -- border to the documentation window
        highlights.LspFloatWinNormal = { bg = colors.bg_main, style = "bold" } -- Change the floating windows background to light grey
        -- highlights.NoicePopupBorder = { fg = colors.red }
        -- highlights.NormalFloat = { bg = "#f8f9fa" } -- Change the floating windows background to light grey
        highlights.CursorLine = { bg = "#effaff" }
        highlights.Directory = { fg = "#000000" }
        -- highlights.LineNr = { fg = colors.fg_dim, bg = "#ffffff" }

        -- Code
        highlights.String = { fg = "#0c703e" }
        highlights["@keyword.import"] = { fg = "#0000b5" }
        highlights["@keyword.function"] = { fg = "#0000b5" }
        highlights["@lsp.typemod.function.declaration"] = { fg = "#1c2833" }
        highlights["@lsp.type.function"] = { fg = "#1c2833", italic = true }
        highlights["@lsp.type.method"] = { fg = colors.cyan_faint }
        highlights["@function.method.call"] = { bold = true }
        highlights["@function.call"] = { bold = true }
        -- highlights["@lsp.typemod.function.readonly.typescript"] = { underline = true }
        highlights.Operator = { fg = "#cf000f" }
        highlights.Underlined = { underline = true, fg = "#444444" }
      end,
    })

    vim.cmd("colorscheme modus")
    vim.cmd("set nolist")
  end,
}
