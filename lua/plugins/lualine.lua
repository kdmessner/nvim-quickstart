return {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            icons_enabled = true,
            theme = "poimandres",
            section_separators = { left = "", right = "" }
        },
        sections = {
            lualine_a = { "mode" },
            lualine_b = {
                {
                    "filename",
                    symbols = {
                        modifier = "*",
                        readonly = "",
                        unnamed = "[No Name]",
                        newfile = "[New]"
                    }
                }
            },
            lualine_c = {},
            lualine_x = {},
            lualine_y = {
                {
                    "filetype",
                    icon_only = true,
                    colored = true
                }
            },
            lualine_z = { "location" }
        },
        inactive_sections = {
            lualine_a = { "filename" },
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = { "location" }
        },
    },
}

