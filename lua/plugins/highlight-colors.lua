return {
    "brenoprata10/nvim-highlight-colors",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        render = "background", -- or "foreground" or "first_column"
        enable_named_colors = true,
        enable_tailwind = true,
    },
}
