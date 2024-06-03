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
        'ggandor/leap.nvim',
        config = function()
            require('leap').create_default_mappings()
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
}, {
    change_detection = { notify = false },
})
