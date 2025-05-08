return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				auto_installed = true,
                ensure_installed = {
                    "erlangls",
                    "eslint",
                    "gopls",
                    "jdtls",
                    "kotlin_language_server",
                    "lua_ls",
                    "pyright",
                    "rust_analyzer",
                    "tailwindcss"
                },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.erlangls.setup({
				capabilities = capabilities,
			})
            lspconfig.eslint.setup({
                capabilities = capabilities,
            })
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
            lspconfig.jdtls.setup({
                capabilities = capabilities,
            })
            lspconfig.kotlin_language_server.setup({
                capabilities = capabilities,
            })
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				capabilities = capabilities,
			})
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
			})
            lspconfig.tailwindcss.setup({
                capabilities = capabilities,
            })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.implementation, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
