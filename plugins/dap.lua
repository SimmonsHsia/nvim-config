return {

  "mfussenegger/nvim-dap",
  opts = function()
    local dap = require("dap")

    -- 配置 GDB 适配器
    dap.adapters.gdb = {
      type = "executable",
      command = "gdb", -- 或 "lldb-dap"（根据你的安装）
      args = { "--interpreter=dap", "--eval-command", "set print pretty on" },
    }
    dap.adapters.codelldb = {
      type = "executable",
      command = "codelldb", -- or if not in $PATH: "/absolute/path/to/codelldb"

      -- On windows you may have to uncomment this:
      -- detached = false,
    }

    -- C/C++ 调试配置
    dap.configurations.c = {
      {
        name = "GDB: Launch",
        type = "gdb",
        request = "launch",
        program = function()
          return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
      },
    }
  end,
}
