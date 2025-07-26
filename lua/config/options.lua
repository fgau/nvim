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

vim.lsp.config["lua-language-server"] = {
    cmd = { "lua-language-server" },
    -- root_markers = { ".luarc.json" },
    filetypes = { "lua" },
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemetry = {
                enable = false,
            },
        },
    },
}


vim.lsp.config["pyright"] = {
    cmd = { "pyright-langserver", "--stdio" },
    -- root_markers = { ".luarc.json" },
    filetypes = { "python" },
    root_markers = {
        "pyproject.toml",
        "setup.py",
        "setup.cfg",
        "requirements.txt",
        "Pipfile",
        "pyrightconfig.json",
    },
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
            },
        },
    },
}

vim.lsp.enable({ "lua-language-server", "pyright", })

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end,
})

vim.cmd("set completeopt+=noselect")

vim.o.winborder = "rounded"

vim.diagnostic.config({
    virtual_text = {
        prefix = '●',
    },
    underline = {
        severity = { min = vim.diagnostic.severity.WARN },
    },
    update_in_insert = true,
    severity_sort = true,
    float = true,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN] = " ",
            [vim.diagnostic.severity.INFO] = "󰋼 ",
            [vim.diagnostic.severity.HINT] = "󰌵 ",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.HINT] = "",
            [vim.diagnostic.severity.INFO] = "",
        },
    },
})
