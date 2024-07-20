return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
        -- popup_border_style = "NC",
        filesystem = {
            bind_to_cwd = true,
            follow_current_file = { enabled = true },
            group_empty_dirs = true,
        },
        window = {
            position = "right",
        },
    },
}
