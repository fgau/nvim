local opt = vim.opt -- for conciseness

opt.guicursor = ""

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.softtabstop = 2
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

opt.list = true
opt.listchars = {
	eol = " ",
	tab = "  ",
	trail = "•",
	extends = "❯",
	precedes = "❮",
}

opt.encoding = "utf-8"

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.scrolloff = 8
opt.isfname:append("@-@")

opt.smartindent = true

opt.hlsearch = false
opt.incsearch = true

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
-- opt.clipboard:append("unnamedplus") -- use system clipboard as default register
opt.clipboard = "unnamedplus"

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- turn off swapfile
opt.swapfile = false
opt.backup = false

opt.updatetime = 50
opt.colorcolumn = "80"

-- hide the help text in the netrw banner
vim.g.netrw_banner = 0

-- set netrw in tree
-- vim.g.netrw_liststyle = 3

opt.mouse = ""
