return {
  "folke/which-key.nvim",
  opts = {
    spec = {
      { "<leader>r", group = "run", mode = "n", icon = { icon = "", color = "cyan" } },
      { "<leader>v", group = "venv", mode = "n", icon = { icon = "", color = "blue" } },
      { "gp", group = "Preview", mode = "n", icon = { icon = "", color = "orange" } },
      { "gP", desc = "Close preview windows" },
    },
  },
}
