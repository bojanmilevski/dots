require('lazy').setup {
  lockfile = vim.fn.stdpath 'data' .. '/lazy/lazy-lock.json',
  debug = false,
  concurrency = 50,

  spec = {
    import = 'plugins',
  },

  install = {
    missing = true,
  },

  change_detection = {
    enabled = false,
    notify = false,
  },
}
