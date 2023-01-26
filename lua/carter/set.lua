vim.opt.relativenumber = true

--required for blankline
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.expandtab = true


vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.cmd.DoMatchParen = true

--Set copy and and paste to the same register
vim.opt.clipboard = "unnamed"

--Add Date
vim.cmd("command! Date put =strftime('%F')")

vim.api.nvim_command('augroup FormatBeforeSave')
vim.api.nvim_command('au BufWritePost *.py execute \':!black %\'')
vim.api.nvim_command('au BufWritePost *.py execute \':!isort %\'')
vim.api.nvim_command('augroup END')

