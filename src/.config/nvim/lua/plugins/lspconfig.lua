return {
  'neovim/nvim-lspconfig',

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
