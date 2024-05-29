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
