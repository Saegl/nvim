-- Must happen before plugins loading
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require 'saegl.options'
require 'saegl.keymaps'
require 'saegl.usercommands'
require 'saegl.neovide'
require 'saegl.lazy'
