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
