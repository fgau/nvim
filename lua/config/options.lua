vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.expandtab = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

vim.opt.list = true
vim.opt.listchars = {
	eol = " ",
	tab = "  ",
	trail = "•",
	extends = "❯",
	precedes = "❮",
}

vim.opt.encoding = "utf-8"

vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.backspace = "indent,eol,start"

vim.opt.clipboard = "unnamedplus"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true


vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.g.netrw_banner = 0

vim.opt.mouse = ""
