return {
  'ribru17/bamboo.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    local bamboo = require('bamboo')

    vim.g.bamboo_transparent = true

    bamboo.setup {
      style = 'multiplex', -- 'vulgaris', 'multiplex', 'light'
      toggle_style_key = "<leader>bs", -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
      toggle_style_list = { 'vulgaris', 'multiplex', 'light' }, -- List of styles to toggle between
      transparent = vim.g.bamboo_transparent, -- Show/hide background
      dim_inactive = false, -- Dim inactive windows/buffers
      term_colors = true, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

      -- Change code style ---
      -- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
      -- You can also configure styles with a string, e.g. keywords = 'italic,bold'
      code_style = {
        comments = { italic = true },
        conditionals = { italic = true },
        keywords = {},
        functions = {},
        namespaces = { italic = true },
        parameters = { italic = true },
        strings = {},
        variables = {},
      },

      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },

      -- Custom Highlights --
      colors = {}, -- Override default colors
      highlights = {}, -- Override highlight groups

      -- Plugins Config --
      diagnostics = {
        darker = false, -- darker colors for diagnostic
        undercurl = true, -- use undercurl instead of underline for diagnostics
        background = true, -- use background color for virtual text
      },
    }
    bamboo.load()

    vim.keymap.set('n', '<leader>bt', function()
      vim.g.bamboo_transparent = not vim.g.bamboo_transparent
      bamboo.setup({ transparent = vim.g.bamboo_transparent })
      bamboo.load()
      print("Transparency: " .. (vim.g.bamboo_transparent and "On" or "Off"))
    end, { desc = "Toggle Bamboo Theme Transparency"})
  end,
}
