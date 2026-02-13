return {
  "nvim-telescope/telescope.nvim", version = '0.2.1',
  dependencies = {
    -- required
    'nvim-lua/plenary.nvim',
    -- recommended
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    --optional
    "nvim-tree/nvim-web-devicons",
  },

  -- my telescope options
  opts = {
    defaults = {
      path_display = { "smart" },
      mappings = {
        i = {
          ["<C-k>"] = "move_selection_previous",
          ["<C-j>"] = "move_selection_next",
        },
      },
    },
  },

  config = function(_, opts)
    local telescope = require("telescope")

    telescope.setup(opts)
    telescope.load_extension("fzf")

    -- telescope keymaps
    local keymap = vim.keymap
    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in current working directory" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Grep in current working directory" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Grep string under cursor in current working directory" })

  end,
}
