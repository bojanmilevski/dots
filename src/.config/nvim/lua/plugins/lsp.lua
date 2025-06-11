return {
  'mason-org/mason-lspconfig.nvim',
  lazy = false,

  dependencies = {
    'neovim/nvim-lspconfig',
    {
      'mason-org/mason.nvim',
      dependencies = 'mason-org/mason-registry',
      lazy = false,
      opts = {},
    },
  },

  opts = {
    automatic_enable = true,
    ensure_installed = {
      'bashls',
      'clangd',
      'cmake',
      'cssls',
      'emmet_ls',
      'eslint',
      'html',
      'jsonls',
      'lua_ls',
      'pyright',
      'ts_ls',
      'yamlls',
    },
  },

  keys = {
    {
      'gd',
      function()
        vim.lsp.buf.definition()
      end,
    },
    {
      '<leader>i',
      function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
      end,
    },
  },
}
