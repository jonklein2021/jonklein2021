return {
    cmd = {
        "clangd",
    },
    filetypes = { "cpp", "cc", "c", "hpp", "h" },
    root_markers = { '.clangd', 'compile_commands.json' },
    log_level = vim.lsp.protocol.MessageType.Warning,
}

