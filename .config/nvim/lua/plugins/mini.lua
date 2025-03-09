return {
  'echasnovski/mini.nvim',
  event = 'VeryLazy',

  config = function()
    require('mini.pairs').setup()
    require('mini.surround').setup()
  end,
}
