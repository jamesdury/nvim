vim.opt.background = 'dark'
vim.opt.cursorline = true
--vim.opt.listchars="tab:▶‒,nbsp:∙,trail:∙,extends:▶,precedes:◀"
vim.opt.syntax = "on"
vim.opt.termguicolors = true
vim.opt.wildoptions = 'pum'

local ok, _ = pcall(vim.api.nvim_command, 'colorscheme spaceduck')

-- make background transparent for dracula theme (to match wezterm dracula theme
-- behind vim)
--vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]

-- for spaceduck theme
vim.cmd [[ hi Comment guifg=#686f9a ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE ]]

vim.g.UltiSnipsExpandTrigger = "<tab>"
