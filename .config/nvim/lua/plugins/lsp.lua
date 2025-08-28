return {
	"neovim/nvim-lspconfig",

	config = function()
		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lspconfig.elixirls.setup({
			capabilities = capabilities,
			cmd = { "/nix/store/d4n4d1lk0jdyg4r2vr8gk9h9wb82ry8r-elixir-ls-0.28.1/bin/elixir-ls" },
			settings = {
				elixirLS = {
					dialyzerEnabled = false,
					fetchDeps = false,
				},
			},
		})
		lspconfig.gopls.setup({
			capabilities = capabilities,
		})
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.nil_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.pyright.setup({
			capabilities = capabilities,
		})
		lspconfig.tailwindcss.setup({
			capabilities = capabilities,
		})
		lspconfig.ts_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.rust_analyzer.setup({
			capabilities = capabilities,
			cmd = { "rust-analyzer" },
			filetypes = { "rust" },
			root_dir = lspconfig.util.root_pattern("Cargo.toml", ".git"),
			settings = {
				["rust-analyzer"] = {
					cargo = { allFeatures = true },
					checkOnSave = {
						enable = true,
						command = "clippy",
					},
					procMacro = { enable = true },
				},
			},
		})

		vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
		vim.keymap.set("n", "gr", vim.lsp.buf.implementation, {})
		vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
	end,
}
