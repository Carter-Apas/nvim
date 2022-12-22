vim.g.mapleader = " "
vim.keymap.set("n", "<leader>sd", vim.cmd.ex)

-- Copy and paste
vim.keymap.set("n", "<leader>y", "\"y+")
vim.keymap.set("n", "<leader>p", "\"p+")

vim.keymap.set("n", ">", "gv>")
vim.keymap.set("n", "<", "gv<")

-- Doubles

vim.keymap.set("i", "(", "()")
vim.keymap.set("i", "'", "''")
vim.keymap.set("i", "\"", "\"\"")
vim.keymap.set("i", "{", "{}")
vim.keymap.set("i", "[", "[]")
