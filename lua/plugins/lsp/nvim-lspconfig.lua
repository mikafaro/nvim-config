return {
  "neovim/nvim-lspconfig",
  config = function()
    -- config of lsp servers here
    vim.lsp.config('lua_ls', {
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          telemetry = {
            enable = false,
          },
        },
      },
    })

    -- Keymaps on lsp attach
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
      end,
    })

    local severity = vim.diagnostic.severity

    vim.diagnostic.config({
      signs = {
        text = {
          [severity.ERROR] = " ",
          [severity.WARN]  = " ",
          [severity.HINT]  = "󰠠 ",
          [severity.INFO]  = " ",
        }
      }
    })
  end,
}
