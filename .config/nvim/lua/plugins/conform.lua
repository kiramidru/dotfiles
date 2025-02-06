return {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    lazy = false,
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                -- You can customize some of the format options for the filetype (:help conform.format)
                rust = { "rustfmt", lsp_format = "fallback" },
                -- Conform will run the first available formatter
                javascript = { "prettierd", "prettier", stop_after_first = true },
            },
        })
    end
}
