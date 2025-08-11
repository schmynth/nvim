-- disable netrw at the very start of your init.lua
-- for nvim-tree
require("config.vim")
require("config.lsp")
require("sebastian.plugins")
--
-- require("sebastian.themes")
local toggleterm = require("sebastian.toggleterm")
toggleterm.setup_keymaps()

local myHarpoon = require("sebastian.harpoon")
myHarpoon.setup_keymaps()

require("sebastian.keymaps")

local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = { "cpp", "lua", "python", "hyprlang", "css", "csv", "c", "bash" },
    highlight = { enable = true },
    indent = { enable = true },
})

require("catppuccin").setup()
vim.cmd.colorscheme("catppuccin")

-- language servers need to be enabled here
vim.lsp.enable({ "clangd", "lua_ls", "pylsp", "bashls" })

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
