return {
  cmd = { "bash-language-server", "start" },
  filetypes = { "sh" },
  -- root_markers are needed for lsp to work
  root_markers = { ".git" },
}
