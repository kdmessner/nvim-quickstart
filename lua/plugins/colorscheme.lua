return {
    -- "olivercederborg/poimandres.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    -- require("poimandres").setup({
    --     disable_italics = true,
    --     bold_vert_split = true,
    --     dim_nc_background = true
    -- })
    --
    -- vim.cmd.colorscheme("poimandres")
    -- end,

    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            variant = "moon",
            dark_variant = "moon",
            dim_inactive_windows = true,
            styles = {
                italic = false
            }
        })
        vim.cmd("colorscheme rose-pine")
    end

    -- "catppuccin/nvim",
    -- name = "catppuccin",
    -- priority = 1000,
    -- config = function()
    --     require("catppuccin").setup({
    --         term_colors = true,
    --         dim_inactive = {
    --             enabled = true
    --         },
    --         no_italic = true,
    --         integrations = {
    --             notify = true,
    --             harpoon = true,
    --             mason = true,
    --             noice = true,
    --             lsp_trouble = true
    --         }
    --     })
    --     vim.cmd.colorscheme("catppuccin-macchiato")
    -- end

}

