return {
    'neovim/nvim-lspconfig',
    config = function()
	local lspconfig = require('lspconfig')

	-- Basic on_attach function for keymaps
	local on_attach = function(_, bufnr)
	    local opts = { noremap = true, silent = true }
	    local keymap = vim.keymap.set
	    keymap('n', 'gd', vim.lsp.buf.definition, opts)
	    keymap('n', 'K', vim.lsp.buf.hover, opts)
	    keymap('n', 'gr', vim.lsp.buf.references, opts)
	    keymap('n', '<leader>rn', vim.lsp.buf.rename, opts)

	    -- gofmt on save for Go
	    if vim.bo[bufnr].filetype == "go" then
		vim.api.nvim_create_autocmd("BufWritePre", {
		    buffer = bufnr,
		    callback = function()
			vim.cmd("silent! !gofmt -w %")
		    end,
		})
	    end
	end

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

	-- Setup pyright
	lspconfig.pyright.setup({
	    on_attach = on_attach,
	})

	-- Go
	lspconfig.gopls.setup({
	    on_attach = on_attach,
	})

	-- Lua
	lspconfig.lua_ls.setup({
	    on_attach = on_attach,
	    settings = {
		Lua = {
		    runtime = { version = 'LuaJIT' },
		    diagnostics = {
			globals = { 'vim' },  -- Recognize the `vim` global
		    },
		    workspace = {
			library = vim.api.nvim_get_runtime_file("", true),
			checkThirdParty = false,
		    },
		    telemetry = { enable = false },
		},
	    },
	})
    end
}
