return {
    "VonHeikemen/fine-cmdline.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim"
    },
    config = function()
        local fine_cmdline = require("fine-cmdline")
        -- configuration
        fine_cmdline.setup({
            cmdline = {
                prompt = "> ",
            },
            popup = {
                border = {
                    style = "double",
                    text = {
                        top = "コメント",
                        top_align = "center"
                    }
                }
            }
        })
        -- keymap
        local keymap = vim.keymap
        keymap.set("n", ":", "<cmd>FineCmdline<CR>", {desc = "remap :"})
    end
}
