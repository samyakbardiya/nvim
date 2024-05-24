-- Display a character as the colorcolumn
return {
  "lukas-reineke/virt-column.nvim",
  opts = {
    char = "│",
    virtcolumn = "80",
    exclude = {
      filetypes = {
        "help",
        "alpha",
        "dashboard",
        "neo-tree",
        "Trouble",
        "trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
        "harpoon",
      },
    },
  },
}
