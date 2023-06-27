local lspconfig_status_ok, lspconfig = pcall(require, 'lspconfig')
if not lspconfig_status_ok then
  return
end

local cmp_nvim_lsp_status_ok, cmp_nvim_lsp = pcall(require, 'cmp_nvim_lsp')
if not cmp_nvim_lsp_status_ok then
  return
end

local keymap = vim.api.nvim_set_keymap

-- enable keybinds for available lsp server
local on_attach = function(client, bufnr)
  -- keybind options
  local opts = { noremap = true, silent = true, buffer = bufnr }

  -- LSP related keymaps
  keymap("n", "gR", "<cmd>Telescope lsp_references<CR>", opts)              -- show definition, references
  keymap("n", "gD", vim.lsp.buf.declaration, opts)                          -- go to declaration
  keymap("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)             -- see definition
  keymap("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)         -- go to implementation
  keymap("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)        -- go to implementation
  keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)                  -- see available code actions
  keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)         -- see available code actions
  keymap("n", "<leader>rn", ":IncRename ", opts)                            -- smart rename
  keymap("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)  -- show diagnostic for file
  keymap("n", "<leader>d", vim.diagnostic.open_float, opts)                 -- show diagnostic for line
  keymap("n", "[d", vim.diagnostic.goto_prev, opts)                         -- previous diagnostic jump
  keymap("n", "]d", vim.diagnostic.goto_next, opts)                         -- next diagnostic jump
  keymap("n", "K", vim.lsp.buf.hover, opts)                                 -- show documentation at cursor

end

local capabilities = require('cmp_nvim_lsp').default_capabilities()


lspconfig['bashls'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig['pylsp'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig['lua_ls'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      -- make language server recognize "vim" global
      diagnostics = {
        globals = { 'vim' },
      },
      workspace = {
        -- make language server aware of runtime files
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
      },
    },
  },
})

lspconfig['hls'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})


