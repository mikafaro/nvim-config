return {

  "nvim-treesitter/nvim-treesitter",

  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",

  opts = {

    -- List of all parsers I want
    ensure_installed = {
      "latex",
      "html",
      "css",
      "javascript",
      "typescript",
      "angular",
      "yaml",
      "toml",
      "json",
      "jsonc",
      "xml",
      "csv",
      "markdown",
      "markdown_inline",
      "bash",
      "zsh",
      "make",
      "cmake",
      "vim",
      "vimdoc",
      "dockerfile",
      "gitignore",
      "lua",
      "python",
      "c",
      "haskell",
      "kotlin",
      "ruby",
      "rust",
      "sql",
      "java",
    },

    sync_install = false,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },

  config = function(_, opts)
    require("nvim-treesitter.config").setup(opts)
  end,

}

