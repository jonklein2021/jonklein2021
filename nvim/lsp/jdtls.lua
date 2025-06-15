return {
    cmd = { "jdtls", },
    filetypes = { "java", },
    root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
    log_level = vim.lsp.protocol.MessageType.Warning,
}
