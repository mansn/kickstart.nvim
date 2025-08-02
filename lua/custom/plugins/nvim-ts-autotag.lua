return {
  'windwp/nvim-ts-autotag',
  ft = { 'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'tsx', 'jsx' },
  config = function()
    require('nvim-ts-autotag').setup()
  end,
}
