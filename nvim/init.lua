vim.opt.ignorecase = true -- ignore case in find commands
vim.opt.smartcase = true -- ^ except when argument contains a capital letter
vim.opt.hlsearch = false -- disable highlighting of previous search
vim.opt.expandtab = true -- transform tabs to spaces
vim.opt.tabstop = 4 -- # spaces for tabs
vim.opt.shiftwidth = 4 -- # spaces for indents
vim.wo.number = true -- show line numbers

-- some keymaps for improved QOL
vim.keymap.set('n', '<C-z>', '<nop>', {}) -- prevent Ctrl-Z from suspending nvim
vim.keymap.set('i', '<C-H>', '<C-W>', { noremap = true }) -- Ctrl-Backspace deletes word preceding cursor

-- keymaps for moving lines up and down
vim.keymap.set('n', '<A-j>', '<Esc>:m .+1<CR>==', {})
vim.keymap.set('n', '<A-k>', '<Esc>:m .-2<CR>==', {})
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', {})
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', {})
vim.keymap.set('v', '<A-j>', ':m \'>+1<CR>gv=gv', {})
vim.keymap.set('v', '<A-k>', ':m \'<-2<CR>gv=gv', {})

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

-- link to lazy and plugin configs
require("config.lazy")

