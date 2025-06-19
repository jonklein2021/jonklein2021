vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = 'LSP Hover' })

-- remap Esc to jk or kj, also disable search highlight upon entering normal mode
vim.keymap.set('i', 'jk', '<Esc>l<cmd>nohlsearch<CR>', {})
vim.keymap.set('i', 'kj', '<Esc>l<cmd>nohlsearch<CR>', {})
vim.keymap.set('v', 'jk', '<Esc><cmd>nohlsearch<CR>', {})
vim.keymap.set('v', 'kj', '<Esc><cmd>nohlsearch<CR>', {})
vim.keymap.set('n', 'jk', '<cmd>nohlsearch<CR>', {})
vim.keymap.set('n', 'kj', '<cmd>nohlsearch<CR>', {})
vim.cmd([[cnoremap jk <Esc>]])
vim.cmd([[cnoremap kj <Esc>]])

vim.keymap.set('n', '<C-z>', '<nop>', {})     -- prevent Ctrl-Z from suspending Neovim
vim.keymap.set('n', '<C-H>', 'db', {})        -- Ctrl-Backspace deletes characters in word preceding cursor
vim.keymap.set('i', '<C-H>', '<C-W>', {})     -- Same as above but in insert mode
vim.keymap.set('n', '<C-Del>', 'dw', {})      -- Ctrl-Del deletes characters in word proceding cursor
vim.keymap.set('i', '<C-Del>', '<C-o>dw', {}) -- Same as above but in insert mode
vim.keymap.set('n', '<BS>', 'hx', {})         -- Backspace in normal mode works as expected
vim.keymap.set('n', 'L', '$', {})             -- E goes to end of line; original mapping was less useful for me
vim.keymap.set('n', 'H', '^', {})             -- B goes to start of line
vim.keymap.set('v', 'J', 'j', {})             -- nice for visual line mode when I'm still holding Shift
vim.keymap.set('v', 'K', 'k', {})             -- same as above
vim.keymap.set('v', '<', '<gv', {})           -- remain in visual mode after using <
vim.keymap.set('v', '>', '>gv', {})           -- same as above but for >
vim.keymap.set('i', '<C-l>', '<Right>', {})   -- move one character forward in insert mode without arrows
-- vim.keymap.set('n', '<C-_>', 'gcc', {}) -- doesn't work in windows terminal?
-- vim.keymap.set('v', '<C-_>', 'gc', {}) -- same as above :/
vim.keymap.set({ 'v', 'i', 'n' }, '<C-f>', '<cmd>Telescope find_files<CR>', {})
vim.keymap.set({ 'v', 'i', 'n' }, '<C-b>', '<nop>', {}) -- idk i just dislike this motion
vim.keymap.set('n', 'U', '<C-r>', {})                   -- U means redo
vim.keymap.set({ 'v', 'n' }, '<C-r>', '<C-l>', {})      -- Ctrl-R "refreshes"
vim.keymap.set('n', '<C-p>', function() vim.diagnostic.goto_prev() end, {})
vim.keymap.set('n', '<C-l>', function() vim.diagnostic.goto_next() end, {})

-- keymaps for moving lines up and down
vim.keymap.set('n', '<A-j>', '<Esc>:m .+1<CR>==', {})
vim.keymap.set('n', '<A-k>', '<Esc>:m .-2<CR>==', {})
vim.keymap.set('i', '<A-j>', '<Esc>:m .+1<CR>==gi', {})
vim.keymap.set('i', '<A-k>', '<Esc>:m .-2<CR>==gi', {})
vim.keymap.set('v', '<A-j>', ':m \'>+1<CR>gv=gv', {})
vim.keymap.set('v', '<A-k>', ':m \'<-2<CR>gv=gv', {})
