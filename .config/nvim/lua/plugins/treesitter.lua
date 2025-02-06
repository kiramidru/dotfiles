return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {
                "c",
                "css",
                "erlang",
                "go",
                "html",
                "javascript",
                "java",
                "kotlin",
                "lua",
                "php",
                "ruby",
                "rust",
                "scala",
                "svelte",
                "terraform",
                "toml",
                "vim"
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
