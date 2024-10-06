return{
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio"
    },
    config = function()
        local dap, dapui = require("dap"), require("dapui")
        local nvim_tree = require("nvim-tree.api").tree
        dapui.setup()
        dap.listeners.before.attach.dapui_config = function()
            nvim_tree.close()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            nvim_tree.close()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
            nvim_tree.open()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
            nvim_tree.open()
        end
        require("neodev").setup({
            library = {
                plugins = {
                    "nvim-dap-ui"
                },
                types = true,
            }
        })
    end
}
