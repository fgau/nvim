local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
end

return {
    {
	"sainnhe/gruvbox-material",
	config = function()
	    vim.cmd.colorscheme "gruvbox-material"
	    enable_transparency()
	end
    },
}
