return {
    { "catppuccin/nvim",          name = "catppuccin", priority = 1000 },
    { "folke/tokyonight.nvim",    name = "tokyonight", lazy = false,   priority = 1000, opts = {} },
    { "rose-pine/neovim",         name = "rose-pine" },
    { "nordtheme/vim",            name = "nord" },
    -- { "shaunsingh/nord.nvim",     name = "Nord" },
    { "ellisonleao/gruvbox.nvim", name = "Gruvbox" },
    { "rebelot/kanagawa.nvim",    name = "kanagawa" },
    {
        "xero/miasma.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme miasma")
        end,
    },
}
