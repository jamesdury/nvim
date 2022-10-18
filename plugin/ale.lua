vim.g.ale_completion_tsserver_autoimport = 1
vim.g.ale_completion_enabled = 1
vim.g.ale_fix_on_save = 1
vim.g.ale_lint_on_enter = 0
vim.g.ale_lint_on_insert_leave = 0
vim.g.ale_lint_on_filetype_changed = 0
vim.g.ale_lint_on_text_changed = 'never'
vim.g.ale_set_ballons = 1
vim.g.ale_floating_preview = 1
--vim.g.ale_float_preview = 1
vim.g.ale_hover_to_floating_preview = 1
vim.g.ale_hover_to_preview = 1
vim.g.ale_fixers = {
    ['*'] = {
        'remove_trailing_lines',
        'trim_whitespace'
    },
    ['javascript'] = {'eslint'},
    ['mdx'] = {'prettier'}
}

vim.g.ale_linters = {
    ['go']= {'gopls'}
}
