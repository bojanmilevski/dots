return {
  'rshkarin/mason-nvim-lint',
  event = 'VeryLazy',

  dependencies = {
    'mason-org/mason.nvim',
    'mfussenegger/nvim-lint',
  },

  opts = {
    automatic_enable = true,
    ensure_installed = {
      'eslint_d',
      'ruff',
      'shellcheck',
      'shellharden',
      'yamllint',
    },
  },
}
