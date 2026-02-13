return {

  "nvim-lualine/lualine.nvim",

  event = "VimEnter",

  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },

  opts = {
    options = {
      globalstatus = true,
      disabled_filetypes = {
        statusline = { "alpha", "dashboard" },
        winbar = { "alpha", "dashboard" },
      },
    }
  },
}
