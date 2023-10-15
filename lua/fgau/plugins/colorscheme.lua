return {
  "sainnhe/gruvbox-material",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- load the colorscheme here
    vim.cmd([[colorscheme gruvbox-material]])

    -- make it transparent
    vim.cmd 'hi Normal guibg=NONE ctermbg=NONE'
    vim.cmd 'hi EndOfBuffer guibg=NONE ctermbg=NONE'
  end,
}
