return {
    {
        'akinsho/bufferline.nvim',
        opts = {
            options = {
                mode = "buffers",
                numbers = "ordinal",
                -- Don't use icons
                -- If you still want to close with mouse
                -- use right click
                show_buffer_close_icons = false,
                middle_mouse_command = "bdelete! %d",

                modified_icon = "M",
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Explorer",
                        highlight = "Directory",
                        text_align = 'left',
                    }
                },

                persist_buffer_sort = false,

                always_show_bufferline = true,
                auto_toggle_bufferline = true,

                sort_by = 'insert_at_end',
            },
        },
        config = function(_, opts)
            local bufferline = require 'bufferline'
            bufferline.setup(opts)
            vim.keymap.set('n', '<leader>bd', '<cmd>bd<cr>')
            vim.keymap.set('n', '<leader>bp', '<cmd>BufferLinePick<cr>')
            vim.keymap.set('n', '<leader>bc', '<cmd>BufferLinePickClose<cr>')
            vim.keymap.set('n', '<leader>bo', '<cmd>BufferLineCloseOthers<cr>')

            vim.keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>')
            vim.keymap.set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>')

            for i = 1, 4, 1 do
                vim.keymap.set('n', '<F' .. i .. '>', '<cmd>BufferLineGoToBuffer' .. i .. '<cr>')
            end
        end,
    },
}
