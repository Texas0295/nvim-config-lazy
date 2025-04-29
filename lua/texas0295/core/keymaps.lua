vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- force movement through hljk
vim.keymap.set('n', '<left>', '<cmd>echo "いい習慣のため、hで移動してください :)"<CR>', { desc = 'force to use h'})
vim.keymap.set('n', '<right>', '<cmd>echo "いい習慣のため、lで移動してください :)"<CR>', { desc = 'force to use l'})
vim.keymap.set('n', '<up>', '<cmd>echo "いい習慣のため、kで移動してください :)"<CR>', { desc = 'force to use k'})
vim.keymap.set('n', '<down>', '<cmd>echo "いい習慣のため、jで移動してください :)"<CR>', { desc = 'force to use j'})

-- window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
