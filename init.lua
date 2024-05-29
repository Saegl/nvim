-- Must happen before plugins loading
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require 'options'
require 'keymaps'
require 'usercommands'
require 'neovide'

require 'lazy-bootstrap'
require 'lazy-plugins'
