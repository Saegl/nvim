return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        keys = {
            { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
        },
        opts = {
            filesystem = {
                window = {
                    mappings = {
                        ['\\'] = 'close_window',
                    },
                },
            },
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
}
