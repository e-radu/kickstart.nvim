-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', 'QQ', ':q!<enter>', { desc = 'Quit discarding changes' })
vim.keymap.set('n', 'WW', ':w!<enter>', { desc = 'Write buffer to file' })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, desc = 'Move up one line' })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, desc = 'Move down one line' })

vim.keymap.set('n', '<C-W>,', ':vertical resize -10<CR>', { noremap = true, desc = 'Resize split window vertically by -10' })
vim.keymap.set('n', '<C-W>.', ':vertical resize +10<CR>', { noremap = true, desc = 'Resize split window vertically by -10' })
vim.keymap.set('n', '<space><space>', '<cmd>set nohlsearch<CR>')
-- Quicker close split
-- vim.keymap.set('n', '<leader>qq', ':q<CR>', { silent = true, noremap = true, desc = 'Close split window' })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true, desc = 'Remapped space to nop' })
vim.keymap.set('n', 'E', '$', { noremap = false, desc = 'Jump to [E]nd of line' })
vim.keymap.set('n', 'B', '^', { noremap = false, desc = 'Jump to [B]eginning of line' })
vim.keymap.set('n', 'TT', ':TransparentToggle<CR>', { noremap = true, desc = '[T]oggle [T]ransparent mode' })
vim.keymap.set('n', 'ss', ':noh<CR>', { noremap = true, desc = 'noh ???' })