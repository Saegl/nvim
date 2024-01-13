-- General neovim configs
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>m", function() vim.cmd("Telescope projects") end)
vim.keymap.set("n", "<C-`>", function() vim.cmd(":terminal") end)
vim.keymap.set("n", "<C-b>", function() vim.cmd("Neotree") end)
vim.api.nvim_create_user_command('Conf', function() vim.cmd(":edit $MYVIMRC") end, {})
vim.api.nvim_exec ('language en_US', true)
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.shell = 'pwsh'
vim.opt.shellcmdflag = '-NoProfile -NoLogo -NonInteractive -Command'
vim.opt.shellquote = ''
vim.opt.shellxquote = ''

vim.opt.scrolloff = 10

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-k>", "<C-u>")
vim.keymap.set("n", "<C-j>", "<C-d>")
vim.keymap.set("t", "<C-'>", "<C-\\><C-n><C-Tab>")
-- Neovide
vim.g.neovide_scale_factor = 0.9
vim.g.neovide_scroll_animation_length = 0.2
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_refresh_rate = 165
vim.g.neovide_refresh_rate_idle = 5
vim.g.neovide_profiler = false
vim.g.neovide_cursor_vfx_mode = ""  -- set 'pixiedust' to enable
vim.g.neovide_cursor_vfx_opacity = 500.0
vim.g.neovide_cursor_vfx_particle_lifetime = 3.0
vim.g.neovide_cursor_vfx_particle_density = 100.0

-- Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Themes
    { 'rose-pine/neovim', name = 'rose-pine' },
    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    -- Syntax highlight
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {
                    "lua", "vim", "vimdoc",
                    "python",
                    "javascript", "html", "css",
                    "rust",
                    "toml", "yaml"
                },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    -- Autocompletion with LSP
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        lazy = true,
        config = false,
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
        }
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'L3MON4D3/LuaSnip' }
        },
    },
    -- Git integration
    { 'lewis6991/gitsigns.nvim' },
    { 'ahmedkhalf/project.nvim' },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end,
    }
})



local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

--- if you want to know more about lsp-zero and mason.nvim
--- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        lsp_zero.default_setup,
    },
})

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  })
})


require("rose-pine").setup({
    variant = "main"
})

vim.cmd('colorscheme rose-pine')

require("gitsigns").setup({
    current_line_blame = true,
})

require("project_nvim").setup()
