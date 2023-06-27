local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Reloads Neovim when you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call do we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}


return packer.startup(function(use)

  -- My Plugins
  use 'wbthomason/packer.nvim'       -- Let packer manage itself
  use 'nvim-lua/popup.nvim'          -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim'        -- Useful lua functions used by lots of plugins

  -- Color Schemes
  use 'catppuccin/nvim'              -- The catppuccin color scheme

  -- File related
  use 'nvim-tree/nvim-tree.lua'      -- file explorer
  use 'kyazdani42/nvim-web-devicons' -- icons for file explorer
  use ({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
  use 'nvim-telescope/telescope.nvim'

  -- Visual aid
  use 'nvim-lualine/lualine.nvim'    -- statusline
  use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }

  -- Completion
  use 'hrsh7th/nvim-cmp'             -- Completion
  use 'hrsh7th/cmp-buffer'           -- Buffer completions
  use 'hrsh7th/cmp-path'             -- Path completions
  use 'hrsh7th/cmp-cmdline'          -- Command line completions
  use 'hrsh7th/cmp-nvim-lsp'         -- lsp completions
  use 'saadparwaiz1/cmp_luasnip'     -- Snippet completions

  -- Snippets
  use 'L3MON4D3/LuaSnip'             -- Snippet engine
  use 'rafamadriz/friendly-snippets' -- Collection of snippets

  -- LSP
  use 'williamboman/mason.nvim'      -- manage and install
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'        -- configure lsp
  use 'onsails/lspkind.nvim'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'  }
  use 'windwp/nvim-ts-autotag'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
