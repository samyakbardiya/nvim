-- plugin that completely replaces
return {
    "folke/noice.nvim",
    opts = {
        presets = {
            bottom_search = true,
            command_palette = false,
        },
        cmdline = {
            format = {
                search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
                search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
            },
        },
    },
}
