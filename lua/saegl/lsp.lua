vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)


local lsp_zero = require('lsp-zero')

lsp_zero.configure('lua_ls', {})
lsp_zero.configure('jsonls', {})
lsp_zero.configure('pyright', {})
lsp_zero.configure('pylsp', {})
lsp_zero.configure('ruff_lsp', {})
lsp_zero.configure('nil_ls', {
    settings = {
        ['nil'] = {
            formatting = {
                command = { "alejandra" }
            }
        }
    }
})
lsp_zero.configure('clangd', {})

lsp_zero.setup_servers({
    'jsonls',
    'lua_ls',
    'pyright',
    'pylsp',
    'ruff_lsp',
    'nil_ls',
    'clangd',
})


lsp_zero.on_attach(function(_, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

lsp_zero.setup()

--- if you want to know more about lsp-zero and mason.nvim
--- read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
--[[
-- FIXME Don't enable mason on NixOS, but enable on windows?
require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        lsp_zero.default_setup,
    },
})
--]]
