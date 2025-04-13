return {
  'neovim/nvim-lspconfig',
  lazy = false,

  dependencies = {
    {
      'j-hui/fidget.nvim',
      event = 'VeryLazy',
      opts = {},
    },
  },

  config = function()
    local servers = require 'utils.lsps'
    local lspconfig = require 'lspconfig'
    for server, config in pairs(servers) do
      lspconfig[server].setup(config)
    end
  end,

  keys = {
    {
      '<leader>i',
      function()
        vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
      end,
    },
  },
}
