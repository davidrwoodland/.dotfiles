local vo = vim.opt

-- " Line numbers 
vo.nu = true

-- " Tab settings
vo.tabstop = 4
vo.softtabstop = 4
vo.shiftwidth = 4
vo.expandtab = true

-- " Smart indenting
vo.smartindent = true

-- " Text wrapping and indentation
vo.wrap = true
vo.breakindent = true

-- " Disable swap and backup files, configure undodir
vo.swapfile = false
vo.backup = false
vo.undodir = os.getenv("HOME") .. "/.vim/undodir"
vo.undofile = true

-- " Search settings
vo.hlsearch = true
vo.incsearch = true

-- " Enable termguicolors and set the background to dark
vo.termguicolors = true
vo.background = "dark"

-- " Display the sign column
vo.signcolumn = "yes"

-- " Scrolloff and sign column settings
vo.scrolloff = 8
vo.sidescrolloff = 8
vo.mousescroll = "ver:1,hor:0"
vo.signcolumn = "yes"

-- " Define additional characters as part of filenames
vo.isfname:append("@-@")

-- " Set updatetime
vo.updatetime = 50

-- " Disable color column
vo.colorcolumn = "0"

-- " Configure GUI font
vo.guifont = "SFMono Nerd Font"

-- " Highlight the current line
vo.cursorline = true

-- " Behaviour
vo.errorbells = false

-- " Search upper/lower case"
vo.ignorecase = true
vo.smartcase = true

