-- Must happen before plugins loading
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- TODO: WTF
vim.g.have_nerd_font = false


require 'options'
require 'keymaps'
require 'usercommands'
require 'neovide'

require 'lazy-bootstrap'
require 'lazy-plugins'
