vim.api.nvim_create_user_command("DOSAssembleAndRun", function()
    local dir = vim.fn.expand("%:p:h")
    local asm_file = vim.fn.expand("%:t")
    local com_file = asm_file:gsub("%.asm$", ".com")
    vim.cmd("!nasm -f bin -o " .. com_file .. " %")

    local Terminal = require('toggleterm.terminal').Terminal
    local term = Terminal:new({
        cmd = "dosemu -dumb -t " .. com_file,
        dir = dir,
        direction = "float",
        close_on_exit = false,
        hidden = true
    })
    term:toggle()
end, {})

vim.api.nvim_create_user_command("LinuxAssembleAndRun", function()
    local dir = vim.fn.expand("%:p:h")
    local asm_file = vim.fn.expand("%:t")
    local base = asm_file:gsub("%.asm$", "")
    local obj_file = base .. ".o"
    local out_file = base

    local Terminal = require('toggleterm.terminal').Terminal
    vim.cmd("!nasm -f elf64 -o " .. obj_file .. " " .. asm_file)
    vim.cmd("!ld " .. obj_file .. " -o " .. out_file)
    local term = Terminal:new({
        cmd = dir .. "/" .. out_file,
        dir = dir,
        direction = "float",
        close_on_exit = false,
        hidden = true
    })
    term:toggle()
end, {})

vim.api.nvim_create_user_command("MASMAssembleAndRun", function()
    local dir = vim.fn.expand("%:p:h")
    local asm_file = vim.fn.expand("%:t")
    local exe_file = asm_file:gsub("%.asm$", ".EXE")
    vim.cmd("!jwasm -mz " .. asm_file)

    local Terminal = require('toggleterm.terminal').Terminal
    local term = Terminal:new({
        cmd = "dosemu -dumb -t " .. exe_file,
        dir = dir,
        direction = "float",
        close_on_exit = false,
        hidden = true
    })
    term:toggle()
end, {})

vim.api.nvim_create_user_command("DEBUG", function ()
    local dir = vim.fn.expand("%:p:h")
    local win_path = dir:gsub("^/home/texas", "D:\\")
    win_path = win_path:gsub("/", "\\")

    local debug_file_name = vim.fn.input("name: ")
    local escaped_path = win_path:gsub("\\", "\\\\")

    print(escaped_path)
    local cmd = string.format(
        [[dosemu -dumb -t "debug %s\\%s"]],
        escaped_path,
        debug_file_name
    )

    local Terminal = require("toggleterm.terminal").Terminal
    local term = Terminal:new({
        cmd = cmd,
        dir = dir,
        direction = "float",
        close_on_exit = false,
        hidden = true
    })

    term:toggle()
end, {})
