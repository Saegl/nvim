require("lazy").setup({
    'tpope/vim-sleuth',                      -- Detect tabstop and shiftwidth automatically
    -- "rcarriga/nvim-notify",
    { 'numToStr/Comment.nvim',  opts = {} }, -- Add comments
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
    -- 'direnv/direnv.vim',                     -- Auto load direnv on vim change dir
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
    -- Theme
    {
        'rose-pine/neovim', name = 'rose-pine',
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end,
    },
    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'ahmedkhalf/project.nvim',
        }
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
                    "toml", -- "yaml"
                },
                auto_install = true,
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end
    },
    -- Autocompletion with LSP
    -- { 'williamboman/mason.nvim' },
    -- { 'williamboman/mason-lspconfig.nvim' },
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
            -- Snippet Engine & its associated nvim-cmp source
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',

            -- Adds LSP completion capabilities
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-path',

            -- Adds a number of user-friendly snippets
            'rafamadriz/friendly-snippets',
        },
    },
    -- DAP
    -- Git integration
    { 'lewis6991/gitsigns.nvim' },
    {
        "NeogitOrg/neogit",
        tag = "v1.0.0",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = true
    },
    { 'tpope/vim-fugitive' },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        -- config = function()
        -- require("which-key").setup()
        -- end,
    },
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
})
