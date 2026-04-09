return {
  "mason-org/mason.nvim",
  opts = {
    registries = {
      'github:Crashdummyy/mason-registry', -- for roslyn
      'github:mason-org/mason-registry',
    },
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },
}
