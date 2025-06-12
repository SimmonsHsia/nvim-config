return {
  { -- This plugin
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    dependencies = { "stevearc/overseer.nvim", "nvim-telescope/telescope.nvim" },
    opts = {},
    keys = {
      -- Open compiler
      {
        "<leader>ro",
        "<cmd>CompilerOpen<cr>",
        desc = "Open Compiler",
        mode = "n",
      },
      {
        "<leader>rt",
        "<cmd>CompilerToggleResults<cr>",
        desc = "Toggle Results",
        mode = "n",
      },
      {
        "<leader>rl",
        "<cmd>CompilerRedo<cr>",
        desc = "Redo Last",
        mode = "n",
      },
      {
        "<leader>rs",
        "<cmd>CompilerStop<cr>",
        desc = "Stop All",
        mode = "n",
      },
      {
        "<leader>rc",
        function()
          local filename = vim.fn.expand("%:p")
          local filebase = vim.fn.fnamemodify(filename, ":t:r")

          local compile_cmd = string.format("gcc -Wall -o %s %s -g", filebase, filename)
          local exit_code = os.execute(compile_cmd)

          if exit_code == true then
            vim.notify("Compilation successful: " .. filename, vim.log.levels.INFO)
          else
            vim.notify("Compilation failed!", vim.log.levels.ERROR)
          end
        end,
        desc = "Compile (gcc)",
        mode = "n",
        ft = "c",
      },
    },
  },
  { -- The task runner we use
    "stevearc/overseer.nvim",
    commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
    cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
    opts = {
      task_list = {
        direction = "bottom",
        min_height = 5,
        max_height = 20,
        default_detail = 1,
      },
    },
  },
}
