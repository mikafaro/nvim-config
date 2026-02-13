return {

  "folke/which-key.nvim",
  event = "VeryLazy",
  
  -- my which-key options 
  opts = {
  },

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
