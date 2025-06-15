vim.opt.expandtab = true -- transform tabs to spaces
vim.opt.tabstop = 4 -- # spaces for tabs
vim.opt.shiftwidth = 4 -- # spaces for indents
vim.opt.ignorecase = true -- ignore case in find commands
vim.opt.smartcase = true -- ^ except when argument contains a capital letter
-- vim.opt.hlsearch = false -- disable highlighting of previous search
vim.wo.number = true -- show line numbers
vim.opt.timeoutlen = 100 -- force mash to enter normal mode

-- configure clipboard provider
vim.opt.clipboard = "unnamedplus"
if vim.fn.has('wsl') == 1 then
    vim.api.nvim_create_autocmd('TextYankPost', {
        group = vim.api.nvim_create_augroup('Yank', { clear = true }),
        callback = function()
            local reg = vim.v.event.regname
            if reg == "" then reg = '"' end
            local text = vim.fn.getreg(reg)
            vim.fn.system('clip.exe', text)
        end,
    })
end

