return {
    cmd = { "lua-language-server", },
    filetypes = { "lua", },
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
    log_level = vim.lsp.protocol.MessageType.Warning,
}
