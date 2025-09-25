-- this defines options for cpp buffers
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.expandtab = true

-- this overrides the buildAndRun.sh keybinding for other languages, because in rust, it leads to
-- unexpected stdin behavior.
-- it means in normal mode, pressing F5 opens a terminal at the bottom with 15 lines and starts insert mode
vim.keymap.set("n", "<F5>", ":botright 15split | terminal cargo run<CR>:startinsert<CR>", { buffer = true })
