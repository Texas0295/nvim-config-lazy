return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")

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
            id = "cppdbg",
            type = "executable",
            command = "E:\\DevEnv\\cpptools-windows-x64\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe",
            options = {
                detached = false
            }
        }

        dap.configurations.rust = {
            {
                name = "Rust Debug",
                type = "codelldb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
                args = {}
            },
        }

        -- keymap
        local keymap = vim.keymap
        keymap.set("n","<leader>b","<cmd>DapToggleBreakpoint<CR>",{desc="Toggle breakpoint"})
        keymap.set("n","<F2>","<cmd>DapContinue<CR>",{desc="Start debugging"})
        keymap.set("n","<F7>","<cmd>DapStepOver<CR>",{desc="Step over"})
        keymap.set("n","<F8>","<cmd>DapSetpInto<CR>",{desc="Step into"})
        keymap.set("n","<F4>","<cmd>DapSetpOut<CR>",{desc="Step out"})
    end
}
