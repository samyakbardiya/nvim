-- Lazy/UI
return {
  "rcarriga/nvim-notify",
  keys = {
    {
      "<leader>sN",
      function()
        require("telescope").extensions.notify.notify()
      end,
      desc = "Notify History",
    },
  },
  opts = {
    timeout = 5000,
    stages = "static",
    render = "compact",
    fps = 60,
    top_down = false,
  },
}
