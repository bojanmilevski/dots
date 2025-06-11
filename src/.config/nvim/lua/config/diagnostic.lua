local icons = require 'utils.icons'

vim.diagnostic.config {
  severity_sort = true,
  underline = true,
  update_in_insert = true,

  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = icons['ERROR'],
      [vim.diagnostic.severity.WARN] = icons['WARN'],
      [vim.diagnostic.severity.HINT] = icons['HINT'],
      [vim.diagnostic.severity.INFO] = icons['INFO'],
    },
  },

  virtual_lines = {
    current_line = true,
  },
}
