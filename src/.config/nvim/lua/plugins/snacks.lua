return {
  'folke/snacks.nvim',
  lazy = false,

  dependencies = {
    'echasnovski/mini.icons',
    'nvim-tree/nvim-web-devicons',
  },

  opts = {
    bigfile = {},
    bufdelete = {},
    dashboard = {},
    git = {},
    notifier = {},
    picker = {},
    quickfile = {},
    rename = {},
    scope = {},
    words = {},

    explorer = {
      replace_netrw = true,
    },

    indent = {
      animate = {
        enabled = false,
      },
    },

    matcher = {
      frecency = true,
    },

    statuscolumn = {
      folds = {
        open = true,
        git_hl = true,
      },
    },

    zen = {
      toggles = {
        dim = false,
      },
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
    {
      '<leader>pw',
      function()
        Snacks.picker 'grep'
      end,
    },
    {
      '<leader>pf',
      function()
        Snacks.picker 'files'
      end,
    },
  },
}
