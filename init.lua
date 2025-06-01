vim.opt.ignorecase = true -- ignore case in find commands
vim.opt.smartcase = true -- ^ except when argument contains a capital letter
vim.opt.hlsearch = false -- disable highlighting of previous search
vim.opt.expandtab = true -- transform tabs to spaces
vim.opt.tabstop = 2 -- # spaces for tabs
vim.opt.shiftwidth = 2 -- # spaces for indents

require("config.lazy")

