vim.keymap.set("n", "<leader>gs", vim.cmd.Git)


vim.api.nvim_command('augroup FugitiveToggle')
vim.api.nvim_command('au!')
vim.api.nvim_command('au Filetype fugitive nnoremap <buffer> <space>gs <C-w>q')
vim.api.nvim_command('augroup END')


--augroup FugitiveToggle
--  autocmd!
--  autocmd Filetype fugitive nnoremap <buffer> <space>g <C-w>q
--augroup END
