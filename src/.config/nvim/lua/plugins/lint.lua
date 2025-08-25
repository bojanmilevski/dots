return {
  'mfussenegger/nvim-lint',
  event = 'VeryLazy',

  config = function()
    require('lint').linters_by_ft = {
      javascript = { 'eslint_d' },
      lua = { 'luacheck' },
    }
  end,

  init = function()
    require('lint').try_lint()
  end,

  keys = {
    {
      '<leader>l',
      function()
        require('lint').try_lint()
      end,
    },
  },
}
