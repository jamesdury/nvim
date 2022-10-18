--vim.cmd [[ autocmd! ]]

vim.cmd [[ syntax enable ]]
vim.cmd [[ filetype plugin indent on ]]
-- The titlestring is blanked when on a remote server
-- TODO would be best to turn this into a command
vim.cmd [[ autocmd BufEnter * let &titlestring = " " ]]

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.belloff = "all"
vim.opt.expandtab = true

vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.list = true
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.tabstop=4
vim.opt.textwidth = 80
vim.opt.timeoutlen=500
vim.opt.title = true
vim.opt.visualbell = true
vim.opt.wrap = true
vim.opt.showmode = false

vim.o.mouse = false

-- better autocomplete behaviour
-- menuone - show popup menu also when there is only one match available
-- preview - show extra information about currently selected completion
-- noinsert - do not insert any text for match until the user selects it from the menu
vim.o.completeopt='menuone,preview,noinsert'

vim.o.scrolloff = 8 -- start scrolling when 8 lines away from margins

vim.g.mapleader = " "

-- swapfile has global & local config, eventhough help says otherwise
vim.g.noswapfile = true
vim.o.swapfile = false -- can open already open files
vim.bo.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.autoread = true -- auto file change detection

-- search
vim.o.ignorecase = true -- Ignorecase when searching
vim.o.incsearch = true	-- start searching on each keystroke
vim.o.smartcase = true	-- ignore case when lowercase, match case when capital case is used
vim.o.hlsearch = true	-- highlight the search results


vim.opt.foldmethod = "syntax"
vim.opt.foldenable = true
vim.opt.foldlevelstart = 99

-- Disable vim builtins for faster startup time
vim.g.loaded_gzip = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1

vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_2html_plugin = 1

vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1
