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

  virtual_text = {
    prefix = function(diagnostic)
      if diagnostic.severity == vim.diagnostic.severity.ERROR then
        return icons['ERROR']
      elseif diagnostic.severity == vim.diagnostic.severity.WARN then
        return icons['WARN']
      elseif diagnostic.severity == vim.diagnostic.severity.INFO then
        return icons['INFO']
      end

      return icons['HINT']
    end,
  },
}
