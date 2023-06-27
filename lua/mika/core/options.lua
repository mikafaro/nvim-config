local options = {
  -- Tabs and Indentation
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  smartindent = true,
  showtabline = 2,

  -- Line numbers
  number = true,
  relativenumber = true,

  -- Split behaviour
  splitbelow = true,
  splitright = true,


  -- Other
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 2,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false, -- redundant with lualine
  smartcase = true,
  swapfile = false,
  termguicolors = true,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  numberwidth = 2,
  signcolumn = "yes",
  wrap = false,  -- long lines rather than wrapping
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
