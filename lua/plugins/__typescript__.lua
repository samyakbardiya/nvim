return {
    {
        "OlegGulevskyy/better-ts-errors.nvim",
        dependencies = { "MunifTanjim/nui.nvim" },
        opts = {
            keymaps = {
                toggle = "<leader>ce", -- default '<leader>dd'
                go_to_definition = "q", -- default '<leader>dx'
            },
        },
    },
}
