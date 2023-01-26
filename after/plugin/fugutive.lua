vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

local function gitPush()
  vim.cmd("Git push")
end

local function gitLog()
  vim.api.nvim_command('Gclog')
end

vim.keymap.set("n", "<leader>gl", function() gitLog() end)
