return {
    "akinsho/bufferline.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
        require("bufferline").setup({
            options = {
                numbers = "ordinal",
                close_command = "bdelete! %d",
                right_mouse_command = "bdelete! %d",
                indicator_icon = '▎',
                buffer_close_icon = '×',
                modified_icon = '+',
                offsets = {{ filetype = "NvimTree", text = "エクスプローラー", text_align = "center", separator = true }},
                color_icons = true,
            },
        })

        -- keymap setup
        local keymap = vim.keymap
        keymap.set("n", "<TAB>", "<cmd>BufferLineCycleNext<CR>", {desc = "Cycle buffers"})
        keymap.set("n", "<leader>h", "<cmd>BufferLineCloseLeft<CR>", {desc = "Close left buffer"})
        keymap.set("n", "<leader>l", "<cmd>BufferLineCloseRight<CR>", {desc = "Close reignt buffer"})
        keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>",{desc = "Go to specific buffer"})
        keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>",{desc = "Go to specific buffer"})
        keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>",{desc = "Go to specific buffer"})
        keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>",{desc = "Go to specific buffer"})
        keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>",{desc = "Go to specific buffer"})
        keymap.set("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>",{desc = "Go to specific buffer"})
        keymap.set("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>",{desc = "Go to specific buffer"})
        keymap.set("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>",{desc = "Go to specific buffer"})
        keymap.set("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>",{desc = "Go to specific buffer"})

    end,
}

