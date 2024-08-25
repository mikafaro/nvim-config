local opt = vim.opt

vim.cmd("let g:netrw_liststyle = 3")

-- line numbers
opt.number = true -- toggle line numbers
opt.relativenumber = true -- shows line numbers relative to current line

-- tabs & indentation
opt.tabstop = 2 -- amount of spaces per tab
opt.shiftwidth = 2 -- amount of spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt. autoindent = true -- copy indent to next line

-- line wrapping
opt.wrap = false -- toggle line wrapping

-- search
opt.ignorecase = true -- toggle whether search is case insensitive
opt.smartcase = true -- if using capital letters search is sensitive regardless

-- cursor line
opt.cursorline = true -- highlights current line

-- appearance

opt.termguicolors = true
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, eol or insert mode start

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- splits vertically to right
opt.splitbelow = true -- splits horizontally below

-- swapfile
opt.swapfile = false
