local dap = require("dap")

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = 'D:\\developTools\\cpptools-windows-x64\\extension\\debugAdapters\\bin\\OpenDebugAD7.exe',
  options = {
    detached = false
  }
}
dap.configurations.c = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
  }
}

dap.configurations.cpp = dap.configurations.c
