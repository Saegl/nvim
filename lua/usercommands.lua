-- Fast access to config
vim.api.nvim_create_user_command('Conf', function() vim.cmd(":edit $MYVIMRC") end, {})

-- Rage mode
vim.api.nvim_create_user_command('Q', function() vim.cmd(":q") end, {})
