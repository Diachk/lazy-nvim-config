-- Ensure nvim-web-devicons is loaded first otherwise the setup override does not work
require("nvim-web-devicons").setup({
  override_by_extension = {
    ["ts"] = {
      icon = "󰛦", -- Default TypeScript icon
      color = "#1b3f7a",
      cterm_color = "214",
      name = "TypeScript",
    },
  },
  override_by_filename = {
    ["tsconfig.json"] = {
      icon = "",
      color = "#1b3f7a",
      cterm_color = "66",
      name = "tsconfig.json",
    },
  },
})

-- Assertion to validate the override
local devicons = require("nvim-web-devicons")
local icon, icon_color = devicons.get_icon_color("file.ts", "ts")
-- Validate the icon and color
assert(icon == "󰛦", "Icon override failed: Expected '󰛦'")
assert(icon_color == "#1b3f7a", "Color override failed: Expected '#1b3f7a'")

return {}
