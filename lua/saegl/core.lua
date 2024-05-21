vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = false -- Focus
vim.opt.relativenumber = false
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- For which-key
-- vim.o.timeout = true
-- vim.o.timeoutlen = 300

-- Always use english
-- TODO: only on windows
-- vim.api.nvim_exec ('language en_US', true)
-- Fast access to conf
vim.api.nvim_create_user_command('Conf', function() vim.cmd(":edit $MYVIMRC") end, {})
vim.api.nvim_create_user_command('Q', function() vim.cmd(":q") end, {})

-- TODO: only on windows
-- vim.opt.shell = 'pwsh'
-- vim.opt.shellcmdflag = '-NoProfile -NoLogo -NonInteractive -Command'
-- vim.opt.shellquote = ''
-- vim.opt.shellxquote = ''

-- Tabs
-- Doesn't work because terminals cannot diff between <C-Tab> and <Tab> :-(
vim.keymap.set("n", "<C-Tab>", 'gt')

-- Awesome selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Remap fast scroll
vim.keymap.set("n", "<C-k>", "<C-u>")
vim.keymap.set("n", "<C-j>", "<C-d>")
vim.opt.scrolloff = 10

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]])

