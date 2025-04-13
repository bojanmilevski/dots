return {
  'echasnovski/mini.nvim',
  event = 'VeryLazy',

  config = function()
    require('mini.icons').setup()
    require('mini.pairs').setup()
    require('mini.surround').setup()
  end,
}
