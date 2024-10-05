vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- when vim is opened
vim.api.nvim_create_autocmd("VimEnter",{
    callback = function()
        require("nvim-tree.api").tree.open()
        vim.cmd("wincmd p")
    end,
})
