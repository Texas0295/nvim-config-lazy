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
        local args = vim.fn.argv();
        if #args == 0 then
            require("nvim-tree.api").tree.open()
        elseif args[1] ~= "leetcode.nvim" then
            -- nothing to do
        end
    end,
})
