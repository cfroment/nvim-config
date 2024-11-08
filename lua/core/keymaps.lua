vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local opts = { noremap = true, silent = true }

--save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", opts)

-- close buffer
vim.keymap.set("n", "<leader>bd", "<cmd> bd <CR>", opts)
-- close buffer with <C-4>
-- vim.keymap.set("n", "<C-4>", "<cmd> bd <CR>", opts)

-- vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- find and center
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- tabs
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", opts)
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", opts)
vim.keymap.set("n", "<leader>tn", ":tabn<CR>", opts)
vim.keymap.set("n", "<leader>tp", ":tabp<CR>", opts)

-- toggle line wrap
vim.keymap.set("n", "<leader>lw", ":set wrap!<CR>", opts)
