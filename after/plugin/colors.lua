function ColorMyPencils(color)
	--color = color or "rose-pine"
	color = color or "gruvbox-material"
	vim.cmd.colorscheme(color)

    -- transparency is not working with alacritty and sway
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
