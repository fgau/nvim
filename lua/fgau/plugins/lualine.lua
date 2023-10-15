return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    return {
      options = {
        icons_enabled = true,
        theme = 'gruvbox',
      },
      sections = {
        lualine_a = {
          {
            'filename',
            path = 1,
          }
        }
      }
    }
  end,
}
