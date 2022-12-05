local g = vim.g
local o = vim.o

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Number of lines to keep above and below the cursor
o.scrolloff = 8

-- Better editor UI
o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = 'yes:2'
o.cursorline = true
o.colorcolumn = 80
o.wrap = false

-- Better editing experience
o.expandtab = true
o.smarttab = true
o.cindent = true
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.hlsearch = false
o.list = true
o.listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂'

-- Undo and backup options
o.backup = false
o.writebackup = false
o.swapfile = false
o.undofile = true
o.undodir = '/home/gnoel/.cache/nvim/undo'

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

-- Preserve view while jumping
o.jumpoptions = 'view'

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Enable highlight groups
vim.opt.termguicolors = true

-- Map <leader> to space
g.mapleader = ' '
g.maplocalleader = ' '
