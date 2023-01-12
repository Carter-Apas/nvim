local function NoNeckPain()
  vim.cmd("NoNeckPain")
end

vim.keymap.set("n", "<leader>`", function() NoNeckPain() end)
