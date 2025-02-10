return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
                -- Formatting
                null_ls.builtins.formatting.ktlint,
                null_ls.builtins.formatting.scalafmt,
				null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.rubocop,
                null_ls.builtins.formatting.alejandra,
                null_ls.builtins.formatting.rubyfmt,
                null_ls.builtins.formatting.terraform_fmt,
                -- Diagnostics
                null_ls.builtins.diagnostics.ansiblelint,
                null_ls.builtins.diagnostics.ktlint,
                null_ls.builtins.diagnostics.rubocop,
                -- Completions
                null_ls.builtins.completion.luasnip,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
