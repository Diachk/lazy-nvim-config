local header = {
  [[             ,----------------,              ,---------,]],
  [[        ,-----------------------,          ,"        ,"|]],
  [[      ,"                      ,"|        ,"        ,"  |]],
  [[     +-----------------------+  |      ,"        ,"    |]],
  [[     |  .-----------------.  |  |     +---------+      |]],
  [[     |  |      C A N      |  |  |     | -==----'|      |]],
  [[     |  |      Y O U      |  |  |     |         |      |]],
  [[     |  |     E X I T     |  |  |/----|`---=    |      |]],
  [[     |  |        ?        |  |  |   ,/|==== ooo |      ;]],
  [[     |  |  C:\>_vim       |  |  |  // |(((( [33]|    ,"]],
  [[     |  `-----------------'  |," .;'| |((((     |  ,"]],
  [[     +-----------------------+  ;;  | |         |,"]],
  [[        /_)______________(_/  //'   | +---------+]],
  [[   ___________________________/___  `,]],
  [[  /  oooooooooooooooo  .o.  oooo /,   \,"-----------]],
  [[ / ==ooooooooooooooo==.o.  ooo= //   ,`\--{)B     ,"]],
  [[/_==__==========__==_ooo__ooo=_/'   /___________,"]],
  [[`-----------------------------']],
}

local lazy = vim.split(
  [[
				██╗      █████╗ ███████╗██╗   ██╗          Z
				██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝      Z
				██║     ███████║  ███╔╝  ╚████╔╝    z
				██║     ██╔══██║ ███╔╝    ╚██╔╝   z
				███████╗██║  ██║███████╗   ██║
				╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝
				]],
  "\n"
)

return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    opts.section.header.val = lazy
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.buttons.val = {
      -- dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button("r", "  Recent files", ":Telescope oldfiles <CR>"),
      -- dashboard.button('f', '󰥨  Find file', ':Telescope find_files <CR>'),
      -- dashboard.button('g', '󰱼  Find text', ':Telescope live_grep <CR>'),
      dashboard.button("s", "  Restore Session", [[:lua require('persistence').load() <cr>]]),
      dashboard.button("l", "󰒲  Lazy", ":Lazy<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }
  end,
}
