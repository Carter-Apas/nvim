vim.opt.list = true
--vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "space:⋅"
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#F2AE49 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#F2AE49 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#F2AE49 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#F2AE49 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#F2AE49 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#F2AE49 gui=nocombine]]
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_end_of_line = false,
    show_current_context = true,
    show_current_context_start = true,
   -- char_highlight_list = {
   --     "IndentBlanklineIndent1",
   --     "IndentBlanklineIndent2",
   --     "IndentBlanklineIndent3",
   --     "IndentBlanklineIndent4",
   --     "IndentBlanklineIndent5",
   --     "IndentBlanklineIndent6",
   -- },
    char_blankline = " ",
    use_treesitter = true,
}
