-- Snippet support using native neovim snippets
return {
    "garymjr/nvim-snippets",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = {
        friendly_snippets = true,
        extend_filetypes = {
            dart = { "flutter" },
            python = { "django" },
        },
    },
}
