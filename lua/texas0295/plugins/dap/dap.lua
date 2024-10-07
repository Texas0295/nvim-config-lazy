return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")
        dap.set_log_level('DEBUG')
        dap.adapters.codelldb = {
            type = 'server',
            port = "${port}",
            executable = {
            command = 'E:\\DevEnv\\codelldb-win32-x64\\extension\\adapter\\codelldb.exe',
            args = {"--port", "${port}"},
            detached = false,
            }
        }

        dap.adapters.cppdbg = {
            id = 'cppdbg',
            type = 'executable',
            command = 'E:\\developTools\\cpptools-windows-x64\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe',
            options = {
                detached = false
            }
        }

        -- keymap
        local keymap = vim.keymap
        keymap.set("n","<leader>b","<cmd>DapToggleBreakpoint<CR>",{desc="Toggle breakpoint"})
        keymap.set("n","'t","<cmd>DapTerminate<CR>",{desc="Stop debugging"})
        keymap.set("n","<F2>","<cmd>DapContinue<CR>",{desc="Start debugging"})
        keymap.set("n","<F7>","<cmd>DapStepOver<CR>",{desc="Step over"})
        keymap.set("n","<F8>","<cmd>DapStepInto<CR>",{desc="Step into"})
        keymap.set("n","<F4>","<cmd>DapStepOut<CR>",{desc="Step out"})
    end
}
