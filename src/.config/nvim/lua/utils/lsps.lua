local servers = {
  astro = {},
  bashls = {},
  cmake = {},
  cssls = {},
  emmet_ls = {},
  eslint = {},
  html = {},
  jsonls = {},
  lua_ls = {},
  pyright = {},
  tailwindcss = {},
  ts_ls = {},
  yamlls = {},

  clangd = {
    cmd = {
      'clangd',
      '--background-index',
      '--clang-tidy',
    },
  },
}

return servers
