return {
    cmd = {
        "clangd",
    },
    filetypes = { "cpp", "cc", "c", "hpp", "h" },
    root_markers = { '.clangd', 'compile_commands.json', 'CMakeLists.txt', 'Makefile' },
    log_level = vim.lsp.protocol.MessageType.Warning,
}
