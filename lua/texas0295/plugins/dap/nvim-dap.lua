return {
    "mfussenegger/nvim-dap",
    config = function()
        local dap = require("dap")
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
                type = "cppdbg",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '\\target\\debug\\', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
                args = {}
            },
        }
    end
}
