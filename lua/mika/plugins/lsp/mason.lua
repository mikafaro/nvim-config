local mason_status_ok, mason = pcall(require, "mason")
if not mason_status_ok then
  return
end

local mason_lspconfig_status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status_ok then
  return
end

mason.setup()

-- Don't list hls here as long as you're using haskell packages from the arch repo.
-- Get the haskell-language-server package from there also to avoid unmatching GHC ABIs.
-- When using same config on mac just install manually with Mason.
mason_lspconfig.setup({
  ensure_installed = {
    "bashls",
    "lua_ls",
    "pylsp",
  },
})
