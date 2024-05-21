require("gitsigns").setup({
    current_line_blame = false,
    on_attach = function(bufnr)
        local gitsigns = require('gitsigns')

        local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
        end

        map('n', '<leader>hs', gitsigns.stage_hunk)
        -- Stage selected lines
        map('v', '<leader>s', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
        map('n', '<leader>hr', gitsigns.reset_hunk)
        map('n', '<leader>hu', gitsigns.undo_stage_hunk)
        map('n', '<leader>hp', gitsigns.preview_hunk)
    end
})

