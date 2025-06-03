-- not technically a plugin; this file includes all installations necessary to set up LSPs
return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    -- the commented-out package below is responsible for loading language servers
    -- using the ensure_installed property; I disabled it because it was annoying
    -- to find the correct terms to add
    --    {
    --        "mason-org/mason-lspconfig.nvim",
    --        config = function()
    --            require("mason-lspconfig").setup({
    --                ensure_installed = { "lua_ls", "cpptools" }
    --            })
    --        end
    --    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            lspconfig.lua_ls.setup({})
        end
    }
}
