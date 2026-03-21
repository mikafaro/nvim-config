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
            library = vim.env.VIMRUNTIME,
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
        --local builtin = require('telescope.builtin')

        -- Helper function to add keybinds
        local function bind(m, k, v, d)
          vim.keymap.set(m, k, v, { buffer = args.buf, silent = true, desc = d })
        end

        -- === Telescope ===

        bind('n', 'gd', function() require('telescope.builtin').lsp_definitions() end, '[G]oto [D]efinition')
        bind('n', 'gr', function() require('telescope.builtin').lsp_references() end, '[G]oto [R]eferences')
        bind('n', 'gi', function() require('telescope.builtin').lsp_implementations() end, '[G]oto [I]mplementation')
        bind('n', '<leader>ds', function() require('telescope.builtin').lsp_document_symbols() end, '[D]ocument [S]ymbols')
        bind('n', '<leader>ws', function() require('telescope.builtin').lsp_dynamic_workspace_symbols() end, '[W]orkspace [S]ymbols')

        -- === Standard LSP Actions ===

        bind('n', 'K', vim.lsp.buf.hover, 'Hover Documentation')
        bind('n', '<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')
        bind('n', '<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame Symbol')
        bind('i', '<C-s>', vim.lsp.buf.signature_help, 'Signature Help')

        -- === Diagnostic Navigation ===
        bind('n', '<leader>do', vim.diagnostic.open_float, '[D]iagnostic: [O]pen Float')
        bind('n', '<leader>dp', vim.diagnostic.goto_prev, '[D]iagnostic: [P]revious')
        bind('n', '<leader>dn', vim.diagnostic.goto_next, '[D]iagnostic: [N]ext')
      end,
    })

    local severity = vim.diagnostic.severity

    vim.diagnostic.config({
      float = {
        border = "rounded",
        source = "always",
        header = "",
        prefix = " ● ",
      },
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
