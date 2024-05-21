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

-- Terminal
vim.keymap.set({"n", "i"}, "<C-`>", function()
    -- Open a tab with terminal
    local tabs = vim.api.nvim_list_tabpages()
    for _, tab in ipairs(tabs) do
        local wins = vim.api.nvim_tabpage_list_wins(tab)
        for _, win in ipairs(wins) do
            local buf = vim.api.nvim_win_get_buf(win)
            if vim.bo[buf].buftype == 'terminal' then
                vim.api.nvim_set_current_tabpage(tab)
                vim.cmd("startinsert")
                return
            end
        end
    end
    -- Or create new terminal tab 
    vim.cmd('tabnew | term')
    vim.cmd('startinsert')
end)
vim.keymap.set("t", "<C-`>", "<C-\\><C-n><C-Tab>")

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

-- Copy to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

