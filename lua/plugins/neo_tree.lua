-- Neovim plugin to manage the file system and other tree like structures.
return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
        -- popup_border_style = "NC",
        -- filesystem = {
        --     bind_to_cwd = true, -- TODO: Check me
        --     follow_current_file = { enabled = true },
        --     group_empty_dirs = true,
        -- },
        window = {
            position = "right",
        },
    },
}
