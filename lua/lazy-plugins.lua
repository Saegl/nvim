require 'lazy'.setup {
    -- Load plugins from `lua/custom/plugins/*.lua`
    { import = 'custom.plugins' },

    'tpope/vim-sleuth',                      -- Detect tabstop and shiftwidth automatically
    { 'numToStr/Comment.nvim',  opts = {} }, -- Add comments with 'gcc'
    {
        'folke/todo-comments.nvim',
        event = 'VimEnter',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = { signs = false }
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        config = function()
            vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        opts = {
            size = 20,
            open_mapping = [[<c-`>]],
        }
    },
    {
        'ggandor/leap.nvim',
        config = function()
            require('leap').create_default_mappings()
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end,
    },
    -- Git integration
    { 'tpope/vim-fugitive' },
    {
        'Julian/lean.nvim',
        event = { 'BufReadPre *.lean', 'BufNewFile *.lean' },

        dependencies = {
            'neovim/nvim-lspconfig',
            'nvim-lua/plenary.nvim',
        },

        opts = {
            mappings = true,
        }
    }
}
