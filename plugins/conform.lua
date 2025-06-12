return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      v = { "verible" },
      verilog = { "verible" },
      sv = { "verible" },
      systemverilog = { "verible" },
    },
    formatters = {
      verible = {
        command = "verible-verilog-format",
        prepend_args = {
          "--column_limit=300",
          "--assignment_statement_alignment=align",
          "--class_member_variable_alignment=align",
          "--enum_assignment_statement_alignment=align",
          "--formal_parameters_alignment=align",
          "--module_net_variable_alignment=align",
          "--named_parameter_alignment=align",
          "--named_port_alignment=align",
          "--port_declarations_alignment=align",
          "--wrap_end_else_clauses=false",
        },
      },
    },
  },
}
