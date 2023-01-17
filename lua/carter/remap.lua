vim.g.mapleader = " "
vim.keymap.set("n", "<leader>sd", vim.cmd.Ex)

-- Copy and paste
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("n", ">", "gv>")
vim.keymap.set("n", "<", "gv<")

 -- Do not yank x
vim.keymap.set("n", "x", "\"_x")

-- Ctrl-A select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

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

local function makeSmaller()
  vim.cmd("res -10")
end

local function makeBigger()
  vim.cmd("res +10")
end

local function makeHorizontalSmaller()
  vim.cmd("vert res -30")
end

local function makeHorizontalBigger()
  vim.cmd("vert res +30")
end

vim.keymap.set("n", "<leader>ws", function() splitHorizontal() end)
vim.keymap.set("n", "<leader>wv", function() splitVertical() end)
vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wr", "<C-w>r")
vim.keymap.set("n", "<leader>w-", function() makeSmaller() end)
vim.keymap.set("n", "<leader>w+", function() makeBigger() end)
vim.keymap.set("n", "<leader>w,", function() makeHorizontalSmaller() end)
vim.keymap.set("n", "<leader>w.", function() makeHorizontalBigger() end)
--Terminal
local function makeTerminalHorizontal()
splitHorizontal()
vim.cmd("terminal")
vim.cmd("exe \"normal i\"")
end

local function makeTerminalVertical()
splitVertical()
vim.cmd("terminal")
vim.cmd("exe \"normal i\"")
end

--Esc terminal back to normal mode
vim.keymap.set("t", "<Esc>","<C-\\><C-n>")

--Open terminal
vim.keymap.set("n", "<leader>t",function() makeTerminalHorizontal() end)
vim.keymap.set("n", "<leader>T",function() makeTerminalVertical() end)
