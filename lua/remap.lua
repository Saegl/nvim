vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Always use english
vim.api.nvim_exec ('language en_US', true)
-- Fast access to conf
vim.api.nvim_create_user_command('Conf', function() vim.cmd(":edit $MYVIMRC") end, {})

-- 3rd party
vim.keymap.set("n", "<leader>m", function() vim.cmd("Telescope projects") end)
vim.keymap.set("n", "<C-b>", function() vim.cmd("Neotree") end)

-- Terminal
vim.keymap.set("n", "<C-`>", function() vim.cmd(":terminal") end)
vim.keymap.set("t", "<C-'>", "<C-\\><C-n><C-Tab>")
vim.opt.shell = 'pwsh'
vim.opt.shellcmdflag = '-NoProfile -NoLogo -NonInteractive -Command'
vim.opt.shellquote = ''
vim.opt.shellxquote = ''

-- Awesome selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Remap fast scroll
vim.keymap.set("n", "<C-k>", "<C-u>")
vim.keymap.set("n", "<C-j>", "<C-d>")
vim.opt.scrolloff = 10

