return {
  'mason-org/mason-lspconfig.nvim',
  event = 'VeryLazy',

  dependencies = {
    'mason-org/mason.nvim',
    'neovim/nvim-lspconfig',
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
}
