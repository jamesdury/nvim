vim.cmd([[
  syntax off
  filetype off
  filetype plugin indent off
]])

require('plugins');
require('base')
require('highlights')
require('maps')

vim.defer_fn(function()
    vim.cmd([[
        syntax on
        filetype on
        filetype plugin indent on
    ]])

end, 0)
