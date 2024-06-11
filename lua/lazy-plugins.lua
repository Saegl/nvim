require 'lazy'.setup({
    -- Load plugins from `lua/plugins/*.lua`
    { import = 'plugins' },

    'ThePrimeagen/vim-be-good',
    'tpope/vim-sleuth',                     -- Detect tabstop and shiftwidth automatically
    { 'numToStr/Comment.nvim', opts = {} }, -- Add comments with 'gcc'
    {
        'folke/todo-comments.nvim',
        event = 'VimEnter',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = { signs = false }
    },
    {
        'Vimjas/vim-python-pep8-indent',
    },
    {
        'ggandor/leap.nvim',
        enabled = false,
        config = function()
            require('leap').create_default_mappings()
        end,
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        enabled = true,
        ---@type Flash.Config
        opts = {},
        -- stylua: ignore
        keys = {
            { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
            { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
            { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
            { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
            { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
        },
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
}, {
    change_detection = { notify = false },
})
