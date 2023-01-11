vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local function gitPush()
  vim.cmd("Git push")
end

vim.keymap.set("n", "<leader>gp", function() gitPush() end)
