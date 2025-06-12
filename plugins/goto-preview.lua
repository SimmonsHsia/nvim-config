return {
  "rmagatti/goto-preview",
  dependencies = { "rmagatti/logger.nvim" },
  lazy = true,
  event = "BufEnter",
  config = function()
    require("goto-preview").setup({ default_mappings = true })
  end, -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
}
