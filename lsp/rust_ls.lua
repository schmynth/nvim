return {
    cmd = { "rust-analyzer" },
    filetypes = { "rs" },
    -- root_markers are needed for lsp to work
    root_markers = { ".git", "buildAndLaunch.sh", "Cargo.toml" },
}
