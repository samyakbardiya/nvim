-- Performant, batteries-included completion plugin for Neovim
return {
    "saghen/blink.cmp",
    dependencies = {
        "Gelio/cmp-natdat",
        "kirasok/cmp-hledger",
    },
    opts = {
        sources = {
            compat = { "hledger", "natdat" },
            provider = {
                hledger = { name = "hledger" },
                natdat = { name = "natdat" },
            },
        },
        keymap = {
            preset = "default",
            ["<C-a>"] = { "select_and_accept" },
            ["<C-u>"] = { "scroll_documentation_up", "fallback" },
            ["<C-d>"] = { "scroll_documentation_down", "fallback" },
        },
    },
}
