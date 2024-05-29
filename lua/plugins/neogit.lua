return {
    {
        "NeogitOrg/neogit",
        tag = "v1.0.0",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            require('neogit').setup {}
            vim.keymap.set('n', '<leader>n', '<Cmd>Neogit<CR>')
        end
    }
}
