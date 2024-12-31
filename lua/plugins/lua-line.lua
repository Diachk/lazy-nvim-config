local colors = {
  black = "#000000",
  maroon = "#800000",
  green = "#008000",
  hlGreen = "#cbf0d3",
  olive = "#808000",
  navy = "#000080",
  purple = "#800080",
  teal = "#008080",
  silver = "#c0c0c0",
  gray = "#808080",
  red = "#ff0000",
  lime = "#00ff00",
  yellow = "#ffff00",
  blue = "#0000ff",
  lblue = "#00b4c5",
  lgreen = "#00bf7d",
  fuchsia = "#ff00ff",
  aqua = "#00ffff",
  white = "#ffffff",
  grey = "#444444",
  brown = "#c44601",
}

local custom16Colors = {
  normal = {
    a = { fg = colors.white, bg = colors.blue, gui = "bold" },
    b = { fg = colors.white, bg = colors.gray },
    c = { fg = colors.silver, bg = colors.black },
  },
  insert = { a = { fg = colors.white, bg = colors.green, gui = "bold" } },
  visual = { a = { fg = colors.black, bg = colors.hlGreen, gui = "bold" } },
  replace = { a = { fg = colors.white, bg = colors.red, gui = "bold" } },
  inactive = {
    a = { fg = colors.silver, bg = colors.gray, gui = "bold" },
    b = { fg = colors.gray, bg = colors.black },
    c = { fg = colors.silver, bg = colors.black },
  },
}
local modernDark = {
  normal = {
    a = { fg = colors.white, bg = colors.grey, gui = "bold" },
    b = { fg = colors.white, bg = colors.gray },
    c = { fg = colors.white, bg = colors.black },
  },
  insert = { a = { fg = colors.white, bg = colors.green, gui = "bold" } },
  visual = { a = { fg = colors.black, bg = colors.hlGreen, gui = "bold" } },
  replace = { a = { fg = colors.white, bg = colors.red, gui = "bold" } },
  inactive = {
    a = { fg = colors.silver, bg = colors.gray, gui = "bold" },
    b = { fg = colors.gray, bg = colors.black },
    c = { fg = colors.silver, bg = colors.black },
  },
}

local modernVibrant = {
  normal = {
    a = { fg = colors.white, bg = colors.brown, gui = "bold" },
    b = { fg = colors.white, bg = colors.gray },
    c = { fg = colors.white, bg = colors.black },
  },
  insert = { a = { fg = colors.black, bg = colors.lgreen, gui = "bold" } },
  visual = { a = { fg = colors.black, bg = colors.hlGreen, gui = "bold" } },
  replace = { a = { fg = colors.white, bg = colors.red, gui = "bold" } },
  inactive = {
    a = { fg = colors.silver, bg = colors.gray, gui = "bold" },
    b = { fg = colors.gray, bg = colors.black },
    c = { fg = colors.silver, bg = colors.black },
  },
}

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- PERF: we don't need this lualine require madness 🤷
    local lualine_require = require("lualine_require")
    lualine_require.require = require
    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = modernVibrant,
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = { "dashboard", "alpha", "starter" },
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function(str)
              return " " .. str
            end,
          },
        },
        lualine_b = {}, -- { "branch", "diff", "diagnostics" },
        lualine_c = {
          {
            "filename",
            file_status = true, -- Displays file status (readonly status, modified status)
            newfile_status = false, -- Display new file status (new file means no write after created)
            path = 1, -- 0: Just the filename
            -- 1: Relative path
            -- 2: Absolute path
            -- 3: Absolute path, with tilde as the home directory
            -- 4: Filename and parent dir, with tilde as the home directory

            shorting_target = 40, -- Shortens path to leave 40 spaces in the window
            -- for other components. (terrible name, any suggestions?)
            symbols = {
              modified = "[+]", -- Text to show when the file is modified.
              readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
              unnamed = "[No Name]", -- Text to show for unnamed buffers.
              newfile = "[New]", -- Text to show for newly created file before first write
            },
          },
        },
        lualine_x = {
          -- mode: e.g: Recording macro
          {
            require("noice").api.status.mode.get,
            cond = require("noice").api.status.mode.has,
          },
          -- last command: e.g: cw
          {
            require("noice").api.status.command.get,
            cond = require("noice").api.status.command.has,
          },
          "encoding",
          {
            "fileformat",
            symbols = {
              unix = "", -- e712
              dos = "", -- e70f
              mac = "", -- e711
            },
          },
          {
            "filetype",
            colored = false,
            icon = { align = "left" },
          },
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    })
  end,
}
-- reference https://github.com/nvim-lualine/lualine.nvim
