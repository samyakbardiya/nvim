-- Distraction-free coding for Neovim
return {
    "folke/zen-mode.nvim",
    opts = {
        window = {
            backdrop = 1,
            width = 0.80,
        },
        plugins = {
            alacritty = { enabled = true, font = "13" },
        },
    },
    keys = {
        { "<leader>uz", "<cmd>ZenMode<CR>", desc = "Toggle Zen-Mode" },
    },
}
