local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Manage windows
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Open vertical split" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Open horizontal split" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Equalize splits" })
keymap.set("n", "<leader>sc", "<cmd>close<CR>", { desc = "Close split" })

-- Resize splits
keymap.set("n", "<A-k>", "<cmd>resize +2<CR>", { desc = "Make split wider" })
keymap.set("n", "<A-j>", "<cmd>resize -2<CR>", { desc = "Make split narrower" })
keymap.set("n", "<A-h>", "<cmd>vertical resize -2<CR>", { desc = "Make split taller" })
keymap.set("n", "<A-l>", "<cmd>vertical resize +2<CR>", { desc = "Make split shorter" })

-- Move focus
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom split" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top split" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

-- Manage tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tc", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) 
