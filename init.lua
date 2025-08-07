-- disable netrw at the very start of your init.lua
-- for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"

-- show line numbers
vim.cmd("set number")

-- sets leader character for key mappings
vim.g.mapleader = " "

require("config.lsp")
require("sebastian.plugins")
-- require("sebastian.themes")
local toggleterm = require("sebastian.toggleterm")
toggleterm.setup_keymaps()

local myHarpoon = require("sebastian.harpoon")
myHarpoon.setup_keymaps()

local builtin = require("telescope.builtin")



-- find files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<space>fb', ':Telescope file_browser<CR>')
-- grep files
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- undotree
vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR>', { desc = "Toggle Undotree" })
-- nvim-tree
vim.keymap.set('n', '<C-h>', ':NvimTreeToggle<CR>', { desc = "Toggle Explorer SideBar" })

vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "show code action" })


local config = require("nvim-treesitter.configs")
config.setup({
  ensure_installed = { "cpp", "lua", "python", "hyprlang", "css", "csv", "c", "bash" },
  highlight = { enable = true },
  indent = { enable = true },
})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

vim.lsp.enable({ 'clangd', 'lua_ls', 'pylsp' })

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
