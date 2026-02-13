return {
  "goolord/alpha-nvim",
  event = "VimEnter",

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.paddingL = {
      type = "padding",
      val = 10,
    }

    dashboard.section.paddingS = {
      type = "padding",
      val = 5,
    }

    dashboard.config.layout = {
      dashboard.section.paddingL,
      dashboard.section.header,
      dashboard.section.paddingS,
      dashboard.section.buttons,
      dashboard.section.paddingL,
      dashboard.section.footer,
    }

    -- my alpha header
    dashboard.section.header.val = {
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣄⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡖⣻⠉⢿⣿⠆⠈⠙⢶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣷⡚⠒⠊⠙⠂⠀⠀⢆⣱⡘⡷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡟⠛⠳⣖⠒⠒⢙⡤⣿⣷⠃⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⢻⠆⠤⠤⡗⣿⢻⣼⢀⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠇⠀⠸⣼⣏⡒⢲⠟⡟⣾⡾⣎⢾⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡾⠀⢸⡴⢻⠃⠀⡜⢸⣻⠴⠛⠁⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⣰⣰⣷⠏⠀⢰⠃⣿⣷⢳⣰⣤⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠹⣯⣿⣟⠢⢤⣇⣸⣿⡽⣧⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣶⣭⠓⠌⠉⡛⠉⣿⣼⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⠃⠀⠀⣰⠁⣼⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠃⠀⠀⠐⠁⣴⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠇⠀⠀⠀⠀⣼⠏⢰⢦⡀⠀⠀⠀⠀⠀⣀⡠⠤⠤⠤⠤⣀⡀⠀⠀⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⠀⡀⠀⠀⣸⡟⠀⠈⢯⡓⠦⢤⡤⠴⠚⠁⠀⠀⠀⠀⠀⢘⠍⠳⡄⠀⠀⠀⠀",
    "  ⠀⠀⢀⣠⠤⠖⠒⡒⠒⠢⢤⡗⢤⡉⢺⠒⣿⡃⣀⣀⣠⠽⠷⠒⠛⠉⠉⣉⣉⣛⣛⣛⣛⡉⠀⠀⣸⠀⠀⠀⠀",
    "  ⢀⡴⠋⠀⠀⢠⠊⠀⠀⠀⢸⡇⢄⡈⠛⣏⣿⠉⠁⠀⢀⣠⠤⠖⠚⠉⠉⠀⠀⠀⠓⠦⣄⠉⠙⠚⠯⣄⡀⠀⠀",
    "  ⡜⠀⠀⠀⠀⢸⣤⡶⠦⢤⣼⣇⠀⠈⢉⣧⢿⣧⠴⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠉⢦⠀",
    "  ⣇⠀⠀⠀⠀⠈⠳⣄⣀⣀⣈⣿⠑⠢⠤⠼⡞⣿⡄⠀⠀⠀⠀⠀⢀⣀⣠⡤⠴⠶⠶⠒⠒⢿⡇⠀⠀⠀⠀⠸⡆",
    "  ⠘⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢇⠈⠐⠂⠙⣖⠻⣤⣠⣤⡶⠞⠋⠉⠀⠀⠀⠀⠀⠀⢀⡼⠃⠀⠀⠀⠀⢸⠇",
    "  ⠀⠈⠓⢦⣀⠀⠀⠀⠀⠀⠀⠀⠘⢧⡀⠀⠀⠈⠢⠀⠉⠓⠦⠤⢤⣀⣠⠤⠤⠤⠒⠚⠉⠀⠀⠀⠀⠀⣠⡟⠁",
    "  ⠀⠀⠀⠀⠈⠙⠓⠲⠶⠶⠶⠶⠞⠛⠓⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠟⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠒⠤⢄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣤⠴⠞⠋⠀⠀⠀⠀",
    "  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀",

    }

    -- Menu options
    dashboard.section.buttons.val = {
      dashboard.button("e", "󰈔 => New File", "<CMD>ene <BAR> startinsert <CR>"),
      dashboard.button("f", "󰱼 => Find File", "<CMD>Telescope find_files<CR>"),
      dashboard.button("r", "󰤘 => Find Recent", "<CMD>Telescope oldfiles<CR>"),
      dashboard.button("g", "󱎸 => Find Word", "<CMD>Telescope live_grep<CR>"),
      dashboard.button("q", "󰩈 => Quit NeoVim", "<CMD>qa<CR>"),
    }

    -- my alpha footer
    dashboard.section.footer.val = {
      "Motivation follows action",
    }

    -- send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
