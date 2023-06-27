local treesitter_status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')
if not treesitter_status_ok then
  return
end

treesitter.setup({
  
  highlight = {
    enable = true,
  },

  indent = {
    enable = true,
  },

  autotag = {
    enable = true,
  },

  ensure_installed = {
    'bash',
    'css',
    'html',
    'yaml',
    'json',
    'markdown',
    'markdown_inline',
    'vim',
    'dockerfile',
    'gitignore',
    'lua',
    'haskell',
    'java',
    'python',
  },

  auto_install = true,
})
