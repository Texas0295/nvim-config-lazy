return {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
    config = function()
        local bufnr = vim.api.nvim_get_current_buf()
        vim.keymap.set("n", "<F2>",vim.lsp.buf.code_action,{silent = true,buffer = bufnr})
    end
}
