return {
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                variant = "main",
                highlight_groups = {
                    TelescopeBorder = { fg = "highlight_high", bg = "none" },
                    TelescopeNormal = { bg = "none" },
                    TelescopePromptNormal = { bg = "base" },
                    TelescopeResultsNormal = { fg = "subtle", bg = "none" },
                    TelescopeSelection = { fg = "text", bg = "base" },
                    TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
                },
                styles = {
                    transparency = false,
                },
            })

            -- vim.cmd('colorscheme rose-pine')
        end,
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        config = function()
            require('kanagawa').setup {
                theme = 'dragon',
                background = {
                    dark = 'dragon',
                }
            }
        end,
    },
    {
        "nyoom-engineering/oxocarbon.nvim",
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme "oxocarbon"
        end,
    },
    {
        'sainnhe/sonokai',
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.sonokai_style = 'andromeda'
            vim.g.sonokai_enable_italic = true
            -- vim.cmd.colorscheme('sonokai')
        end
    },
    {
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            -- require 'nordic'.load()
        end
    },
    {
        'mcchrish/zenbones.nvim',
        priority = 1000,
        dependencies = {
            "rktjmp/lush.nvim",
        },
        config = function()
            -- vim.cmd.colorscheme('tokyobones')
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme "catppuccin-mocha"
        end,
    },
    {
        'Yazeed1s/oh-lucy.nvim',
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme "oh-lucy-evening"
        end,
    },
}
