-- Beautiful code snippet images right in the most epic editor :chef_kiss:
return {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    main = "nvim-silicon",
    opts = {
        -- disable_defaults = true,
        font = "Input Mono",
        theme = "gruvbox-dark",
        background = "#00000000",
        pad_horiz = 32,
        pad_vert = 40,
        no_window_controls = true,
        shadow_color = "#555555",
    },
    keys = {
        {
            "<localLeader>ss",
            function()
                require("nvim-silicon").shoot()
            end,
            mode = { "v" },
            desc = "Create code screenshot",
        },
        {
            "<localLeader>sf",
            function()
                require("nvim-silicon").file()
            end,
            mode = { "v" },
            desc = "Save code screenshot as file",
        },
        {
            "<localLeader>sc",
            function()
                require("nvim-silicon").clip()
            end,
            mode = { "v" },
            desc = "Copy code screenshot to clipboard",
        },
    },
}
