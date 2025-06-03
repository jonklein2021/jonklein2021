return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"c", "cpp", "java", "python", "go", "rust", "lua", "javascript", "html", "css", "bash", "cmake", "make", "sql"},
            hightlight = { enable = true },
            indent = { enable = true },
        })
    end
}

