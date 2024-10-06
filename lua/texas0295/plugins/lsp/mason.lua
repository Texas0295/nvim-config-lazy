return {
    {
        "williamboman/mason.nvim",
        event = { "VeryLazy" },
        lazy = true,
        config = function()
        local mason = require("mason")
            mason.setup({
                ui = {
                    icon = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗",
                    },
                },
            })
        end
    },
    {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim"
    },
    config = function()
    local mason_lspconfig = require("mason-lspconfig")
        mason_lspconfig.setup({
            lazy = true,
            ensure_installed = {
                "html",
                "cssls",
                "tailwindcss",
                "svelte",
                "lua_ls",
                "graphql",
                "emmet_ls",
                "prismals",
                "pyright",
            },
            automatic_installation = true,
         })
     end,
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        config = function()
            local mason_tool_installer = require("mason-tool-installer")
            mason_tool_installer.setup({
                lazy = true,
                ensure_installed = {
                    "prettier", -- prettier formatter
                    "stylua", -- lua formatter
                    "isort", -- python formatter
                    "black", -- python formatter
                    "pylint",
                    "eslint_d",
                },
            })
        end
    }
}

