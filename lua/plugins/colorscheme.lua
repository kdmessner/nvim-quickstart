return {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
    require("poimandres").setup({
        disable_italics = true,
        bold_vert_split = true,
        dim_nc_background = true
    })

    vim.cmd.colorscheme("poimandres")
    end,
}

