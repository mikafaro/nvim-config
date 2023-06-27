local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- shorter function name
local keymap = vim.api.nvim_set_keymap

-- Leader Key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode       = "n"
--   insert_mode       = "i"
--   visual_mode       = "v"
--   visual_block_mode = "x"
--   term_mode         = "t"
--   command_mode      = "c"

-- NORMAL MODE

-- General
keymap("n", "<leader>nh", ":nohl<cr>", opts)

-- Splits
keymap("n", "<leader>sv", "<C-w>v", opts)
keymap("n", "<leader>sh", "<C-w>s", opts)
keymap("n", "<leader>se", "<C-w>=", opts)
keymap("n", "<leader>sx", ":close<cr>", opts)

-- Tabs
keymap("n", "<leader>to", ":tabnew<cr>", opts)
keymap("n", "<leader>tx", ":tabclose<cr>", opts)
keymap("n", "<leader>tn", ":tabn<cr>", opts)
keymap("n", "<leader>tp", ":tabp<cr>", opts)

-- Better Window Nav
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resizing using arrow keys
keymap("n", "<C-Up>", ":resize -2<cr>", opts)
keymap("n", "<C-Down>", ":resize +2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)

-- Plugin Keymaps

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts)
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)

