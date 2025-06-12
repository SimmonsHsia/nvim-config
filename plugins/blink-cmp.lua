return {
  "saghen/blink.cmp",
  enabled = true,
  opts = {
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
      --providers = {
      --copilot = {
      --module = "blink-cmp-copilot",
      --},
      --},
    },
    cmdline = {
      enabled = false,
      --completion = { ghost_text = { enabled = true } },
    },
    keymap = {
      preset = "default",
      --["<C-space>"] = { "show", "hide", "show_documentation", "hide_documentation" },
    },
  },
}
