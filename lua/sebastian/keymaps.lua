local builtin = require("telescope.builtin")

-- normal mode with kj roll
vim.keymap.set("i", "kj", "<ESC>")

-- find files
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})

-- file browser
vim.keymap.set("n", "<space>fb", ":Telescope file_browser<CR>")

-- grep files
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- undotree
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>", { desc = "Toggle Undotree" })

-- nvim-tree
vim.keymap.set("n", "<A-e>", ":NvimTreeToggle<CR>", { desc = "Toggle Explorer SideBar" })

-- code_action
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "show code action" })

-- exit terminal mode with double ESC
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- move window focus with just C+hjkl
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- keymaps for running files or projects with F5 are defined in sebastian/toggleterm.lua

-----------------------------
-- LSP RELATED KEYBINDINGS --
-----------------------------

-- go to definition
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "[g]o to [d]efinition" })
-- go to declaration
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "[g]o to [D]eclaration" })
-- rename symbol gobally
vim.keymap.set("n", "rs", vim.lsp.buf.rename, { desc = "[r]ename [s]ymbol" })

-- fuzzy-find symbols of active document (functions, variables etc.) with telescope
vim.keymap.set("n", "fos", require("telescope.builtin").lsp_document_symbols, { desc = " [f]ind [o]pen [s]ymbols" })
-- fuzzy-find symbols of workspace (functions, variables etc.) with telescope
vim.keymap.set(
    "n",
    "fws",
    require("telescope.builtin").lsp_dynamic_workspace_symbols,
    { desc = " [f]ind [w]orkspace [s]ymbols" }
)

-- go to type definition
vim.keymap.set("n", "gt", require("telescope.builtin").lsp_type_definitions, { desc = "[g]oto [t]ype definition" })
