return{
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup({
            size = 8,
            open_mapping = [[<c-t>]],
            direction = "float",
            shell = "fish",
            dir = vim.fn.expand("%:p:h"),
        })
    end,
}
