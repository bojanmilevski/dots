return {
  'zapling/mason-conform.nvim',
  event = 'VeryLazy',

  dependencies = {
    'mason-org/mason.nvim',
    'stevearc/conform.nvim',
  },

  opts = {
    automatic_enable = true,
    ensure_installed = {
      'clang-format',
      'prettierd',
      'shellharden',
      'shfmt',
      'yamlfix',
      'yamlfmt',
    },
  },
}
