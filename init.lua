-- Must happen before plugins loading
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- TODO: WTF
vim.g.have_nerd_font = false


require 'options'
require 'keymaps'
require 'usercommands'

require("saegl.neovide")
require("saegl.install_lazy")
require("saegl.plugins")
require("saegl.theme")
require("saegl.git")
require("saegl.telescope")
require("saegl.harpoon")
require("saegl.lsp")
require("saegl.dap")
require("saegl.autocomplete")
require("saegl.runner")
-- require("saegl.whichkey")
