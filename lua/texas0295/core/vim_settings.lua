-- ASM support
vim.filetype.add({
    extension = {
        asm = "asm",
    },
})
vim.diagnostic.config({
    virtual_text = false,
    signs = false,
    underline = false,
    update_in_insert = false,
    severity_sort = false,
})
