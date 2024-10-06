local dap = require("dap")
dap.configurations.c = {
    {
        name = "C Debug",
        type = "codelldb",
        request = "launch",
        program = "${fileDirname}/${fileBasenameNoExtension}",
        args = {},
        cwd = "${workspaceFolder}",
        stopAtEntry = false,
        environment = {},
        runInTerminal = false,
        MIMode = "gdb",
    },
}
