return {
    cmd = { "clangd", "--background-index", "--compile-commands-dir=build" },
    filetypes = { "cpp", "h", "tpp", "c" },
    -- root_markers are needed for lsp to work
    root_markers = { ".git", "buildAndLaunch.sh" },
}
