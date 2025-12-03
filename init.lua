-- disable netrw at the very start of your init.lua
-- for nvim-tree
require("config.vim")
require("config.lsp")
require("sebastian.plugins")
--

vim.o.mouse = "a"

-- Read the last used theme
local theme_file = vim.fn.stdpath("config") .. "/.current_theme"

if vim.fn.filereadable(theme_file) == 1 then
    local theme = vim.fn.readfile(theme_file)[1]
    if theme and theme ~= "" then
        vim.cmd("colorscheme " .. theme)
        vim.g.loaded_theme = true
    end
end

-- require("sebastian.themes")
local toggleterm = require("sebastian.toggleterm")
toggleterm.setup_keymaps()

local myHarpoon = require("sebastian.harpoon")
myHarpoon.setup_keymaps()

vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        pcall(function()
            require("lualine").setup({
                options = { theme = "auto" },
            })
        end)
    end,
})
require("sebastian.keymaps")

local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = { "cpp", "lua", "python", "hyprlang", "css", "csv", "c", "bash", "rust" },
    highlight = { enable = true },
    indent = { enable = true },
})

require("catppuccin").setup()

-- Only set catppuccin if no persistent theme is found
if vim.g.loaded_theme ~= true then
    vim.cmd.colorscheme("catppuccin")
end

-- language servers need to be enabled here
vim.lsp.enable({ "clangd", "lua_ls", "pylsp", "bashls", "rust_ls" })

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
