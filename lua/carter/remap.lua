vim.g.mapleader = " "
vim.keymap.set("n", "<leader>sd", vim.cmd.Ex)

-- Copy and paste
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("n", ">", "gv>")
vim.keymap.set("n", "<", "gv<")

 -- Do not yank x
vim.keymap.set("n", "x", "\"_x")

-- Doubles
--vim.keymap.set("i", "(", "()<Esc>i")
--vim.keymap.set("i", "'", "''<Esc>i")
--vim.keymap.set("i", "\"", "\"\"<Esc>i")
--vim.keymap.set("i", "{", "{}<Esc>i")
--vim.keymap.set("i", "[", "[]<Esc>i")

--Splitting
--function move down
local function splitHorizontal()
  vim.cmd("split")
  vim.cmd("exe \"normal \\<C-w>j\"")
end

local function splitVertical()
  vim.cmd("vsplit")
  vim.cmd("exe \"normal \\<C-w>l\"")
end

vim.keymap.set("n", "<leader>ws", function() splitHorizontal() end)
vim.keymap.set("n", "<leader>wv", function() splitVertical() end)
vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wl", "<C-w>l")

--Terminal
local function makeTerminal()
splitHorizontal()
vim.cmd("terminal")
vim.cmd("exe \"normal i\"")
end

--Esc terminal back to normal mode
vim.keymap.set("t", "<Esc>","<C-\\><C-n>")

--Open terminal
vim.keymap.set("n", "<leader>t",function() makeTerminal() end)
