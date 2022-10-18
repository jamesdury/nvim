vim.keymap.set('n', '<leader>fr', ':Telescope oldfiles<CR>')
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fs', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>')
vim.keymap.set('n', '<leader>gs', ':Gitsigns stage_hunk<CR>')
vim.keymap.set('n', '<leader>gu', ':Gitsigns reset_hunk<CR>')
vim.keymap.set('n', '<leader>gn', ':Gitsigns next_hunk<CR>')
vim.keymap.set('n', '<leader>gb', ':GitBlame<CR>')
vim.keymap.set('n', '<leader>t', ':ALEHover<CR>')
vim.keymap.set('n', '<leader>n', ':cnext<CR>')
vim.keymap.set('n', '<leader>p', ':cprev<CR>')
vim.keymap.set('n', '<leader>pp', ':cd %:p:h<CR>')

vim.keymap.set('n', '<leader>o', ':NnnPicker %:p:h<CR>')


vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { noremap=true, silent=true })
vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, { noremap=true, silent=true })
