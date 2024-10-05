return {
    "folke/tokyonight.nvim",
    config = function()
        require("tokyonight").setup({
            style = "night",
            transparent = true,
            terminal_colors = true,
            styles = {
                comments = { italic = true },
                keywords = { bold = true },
                functions = {},
                variables = {},
                sidebars = "transparent",
                floats = "transparent",
            },
        })
        vim.cmd("colorscheme tokyonight")
    end,
}

