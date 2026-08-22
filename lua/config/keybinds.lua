-- Set Leader Key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- General Keymaps
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })
keymap("n", "<leader>w", "<cmd>w<CR>", { desc = "File: Save" })
keymap("n", "<leader>q", "<cmd>q<CR>", { desc = "File: Quit" })
keymap("n", "<leader>e", vim.cmd.Ex, { desc = "Explorer: Open Netrw" })
keymap("n", "<leader>pv", vim.cmd.Ex, { desc = "Explorer: Open Netrw" })

-- Better Window Navigation (Ctrl + h/j/k/l)
keymap("n", "<C-h>", "<C-w>h", { desc = "Window: Move left" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Window: Move down" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Window: Move up" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Window: Move right" })

-- Window Management (Splits)
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split: Vertically" })
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split: Horizontally" })
keymap("n", "<leader>se", "<C-w>=", { desc = "Split: Make equal size" })
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Split: Close current" })

-- Buffer Navigation
keymap("n", "<Tab>", "<cmd>bnext<CR>", { desc = "Buffer: Next" })
keymap("n", "<S-Tab>", "<cmd>bprevious<CR>", { desc = "Buffer: Previous" })
keymap("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Buffer: Close current" })

-- Move Selected Lines Up/Down in Visual Mode
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Keep Cursor Centered while Scrolling / Searching
keymap("n", "<C-d>", "<C-d>zz", { desc = "Scroll down & center" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Scroll up & center" })
keymap("n", "n", "nzzzv", { desc = "Next search match & center" })
keymap("n", "N", "Nzzzv", { desc = "Prev search match & center" })

-- Paste without overwriting register in Visual mode
keymap("x", "<leader>p", [["_dP]], { desc = "Paste without overwriting clipboard" })
