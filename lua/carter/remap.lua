vim.g.mapleader = " "

-- Copy and paste
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("n", ">", "gv>")
vim.keymap.set("n", "<", "gv<")

 -- Do not yank x
vim.keymap.set("n", "x", "\"_x")
vim.keymap.set("v", "x", "\"_x")

 -- Do not yank p
vim.keymap.set("n", "p", "pgvy")
vim.keymap.set("v", "p", "pgvy")

-- Ctrl-A select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

--New lines
vim.keymap.set("n", "o", "o<esc>", {noremap = true})
vim.keymap.set("n", "O", "O<esc>", {noremap = true})

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
vim.keymap.set("n", "<leader>wH", "<C-w>H")
vim.keymap.set("n", "<leader>wJ", "<C-w>J")
vim.keymap.set("n", "<leader>wK", "<C-w>K")
vim.keymap.set("n", "<leader>wL", "<C-w>L")
vim.keymap.set("n", "<leader>wr", "<C-w>r")
--vim.keymap.set("n", "<leader>w<down>", function() makeSmaller() end)
--vim.keymap.set("n", "<leader>w<up>", function() makeBigger() end)
--vim.keymap.set("n", "<leader>w<left>", function() makeHorizontalSmaller() end)
--vim.keymap.set("n", "<leader>w<right>", function() makeHorizontalBigger() end)
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
