return {
  "theprimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  -- priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file)
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

    vim.keymap.set("n", "<S-l>", function() ui.nav_next() end)
    vim.keymap.set("n", "<S-h>", function() ui.nav_prev() end)

  end,
}
