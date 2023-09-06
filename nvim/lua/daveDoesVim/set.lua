-- " Line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- " Tab settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- " Smart indenting
vim.opt.smartindent = true

-- " Text wrapping and indentation
vim.opt.wrap = true
vim.opt.breakindent = true

-- " Disable swap and backup files, configure undodir
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- " Search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- " Enable termguicolors and set the background to dark
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- " Display the sign column
vim.opt.signcolumn = "yes"

-- " Scrolloff and sign column settings
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

-- " Define additional characters as part of filenames
vim.opt.isfname:append("@-@")

-- " Set updatetime
vim.opt.updatetime = 50

-- " Disable color column
vim.opt.colorcolumn = "0"

-- " Configure GUI font
vim.opt.guifont = "SFMonoNerdFont"

-- " Highlight the current line
vim.opt.cursorline = true

