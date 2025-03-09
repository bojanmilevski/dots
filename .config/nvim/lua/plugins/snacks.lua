return {
  'folke/snacks.nvim',
  lazy = false,

  dependencies = {
    'echasnovski/mini.icons',
    'nvim-tree/nvim-web-devicons',
  },

  opts = {
    animate = {},
    bigfile = {},
    bufdelete = {},
    dashboard = {},
    git = {},
    notifier = {},
    quickfile = {},
    rename = {},
    scope = {},
    statuscolumn = {},
    words = {},
    zen = {},

    explorer = {
      replace_netrw = true,
    },

    indent = {
      animate = {
        enabled = false,
      },
    },

    picker = {
      finder = 'ripgrep',
    },

    matcher = {
      frecency = true,
    },
  },

  keys = {
    {
      '<leader>n',
      function()
        Snacks.explorer()
      end,
    },
    {
      '<leader>z',
      function()
        Snacks.zen()
      end,
    },

    -- picker
    {
      '<leader>tg',
      function()
        Snacks.picker 'grep'
      end,
    },
    {
      '<leader>tf',
      function()
        Snacks.picker 'files'
      end,
    },
  },
}
