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

-- display options
vim.opt.expandtab = true -- transform tabs to spaces
vim.opt.tabstop = 4 -- # spaces for tabs
vim.opt.shiftwidth = 4 -- # spaces for indents
vim.opt.ignorecase = true -- ignore case in find commands
vim.opt.smartcase = true -- ^ except when argument contains a capital letter
-- vim.opt.hlsearch = false -- disable highlighting of previous search
vim.wo.number = true -- show line numbers

-- remap Esc jk or kj 
vim.keymap.set('i', 'jk', '<Esc>l', {})
vim.keymap.set('i', 'kj', '<Esc>l', {})
vim.keymap.set('v', 'jk', '<Esc>', {})
vim.keymap.set('v', 'kj', '<Esc>', {})
vim.cmd([[cnoremap jk <Esc>]])
vim.cmd([[cnoremap kj <Esc>]])
vim.opt.timeoutlen = 100 -- force mash to enter normal mode

-- other useful keymaps 
vim.keymap.set('n', '<C-z>', '<nop>', {}) -- prevent Ctrl-Z from suspending Neovim
vim.keymap.set('n', '<C-H>', 'db', {}) -- Ctrl-Backspace deletes characters in word preceding cursor
vim.keymap.set('i', '<C-H>', '<C-W>', {}) -- Same as above but in insert mode
vim.keymap.set('n', '<C-Del>', 'dw', {}) -- Ctrl-Del deletes characters in word proceding cursor
vim.keymap.set('i', '<C-Del>', '<C-o>dw', {}) -- Same as above but in insert mode 
vim.keymap.set('n', '<BS>', 'hx', {}) -- Backspace in normal mode works as expected
vim.keymap.set('n', 'E', '$', {}) -- E goes to end of line; original mapping was less useful for me
vim.keymap.set('n', 'B', '^', {}) -- B goes to start of line
vim.keymap.set('v', 'J', 'j', {}) -- nice for visual line mode when I'm still holding Shift
vim.keymap.set('v', 'K', 'k', {}) -- same as above
vim.keymap.set('v', '<', '<gv', {}) -- remain in visual mode after using <
vim.keymap.set('v', '>', '>gv', {}) -- same as above but for >
vim.keymap.set('i', '<C-l>', '<Right>', {}) -- move one character forward in insert mode without arrows

-- keymaps for moving lines up and down
vim.keymap.set('n', '<A-j>', '<Esc>:m .+1<CR>==', {})
vim.keymap.set('n', '<A-k>', '<Esc>:m .-2<CR>==', {})
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', {})
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', {})
vim.keymap.set('v', '<A-j>', ':m \'>+1<CR>gv=gv', {})
vim.keymap.set('v', '<A-k>', ':m \'<-2<CR>gv=gv', {})

-- link to lazy and plugin configs
require("config.lazy")
