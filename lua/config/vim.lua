-- vim.g is for global vim settings
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- display settings
vim.opt.showmode = false

-- vim.cmd("set expandtab")
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"
-- folding: Enable Tree-sitter folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false -- don’t auto-fold by default
vim.wo.relativenumber = true

-- show line numbers
vim.opt.number = true

-- sets leader character for key mappings
vim.g.mapleader = " "

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- See `:help 'confirm'`
vim.o.confirm = true

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
