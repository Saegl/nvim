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
    -- Optionally, open a new terminal in a new tab if none is found
    vim.cmd('tabnew | term')
    vim.cmd('startinsert')
end)
vim.keymap.set("t", "<C-`>", "<C-\\><C-n><C-Tab>")
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

