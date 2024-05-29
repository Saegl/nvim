vim.opt.number = false
vim.opt.relativenumber = false

-- Enable mouse in all modes, in 'nvi' by default
vim.opt.mouse = 'a'

-- Remove this duplicate '--INSERT--' on last line, when going to insert mode
vim.opt.showmode = false

-- Preserve indentation on wrapped (long lines)
vim.opt.breakindent = true
vim.opt.showbreak = '>>'

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true  -- ignore case in search
vim.opt.smartcase = true   -- ignore 'ignore' if pattern contains uppercase letters

-- always draw leftest column for signs (git, breakpoints etc)
vim.opt.signcolumn = 'yes'

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- TODO: Magic commands
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

