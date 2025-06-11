return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = 'nvim-treesitter/nvim-treesitter-context',
  build = ':TSUpdate',

  config = function()
    require('nvim-treesitter.configs').setup {
      auto_install = true,
      ensure_installed = {},
      ignore_install = {},
      modules = {},
      sync_install = false,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true,
      },
    }
  end,
}
