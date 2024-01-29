return {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        require("dashboard").setup({
            theme = "doom",
            hide = {
                statusline = true
            },
            config = {
                header = {
                    ' ',
                    ' ',
                    ' ',
                    '                        ⢀⣴⣾⣿⣿⣷⣤⣤⣤⣤⣀    ', 
                    '                       ⢰⣿⣿⣿⣿⣷⣾⠿⠟⠛⠉⠉    ', 
                    '                      ⢀⣿⣿⣿⣿⣿⣿⡃         ', 
                    '                     ⣠⣾⣿⣿⣿⣿⣿⣿⣇         ', 
                    '                  ⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿         ', 
                    '                 ⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿         ', 
                    '               ⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏         ', 
                    '              ⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁          ', 
                    '            ⣀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟            ', 
                    '         ⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟             ', 
                    '       ⣠⣴⡿⠿⣿⣿⣿⣿⣿⡿⣿⡟⠋⠁⠈⠙⣿⡿              ', 
                    '       ⠉⢁⣴⣾⣿⣿⣿⠟⠁ ⠹⡇    ⢿⣇              ', 
                    '     ⢀⣠⣾⣿⣿⣿⡿⠟⠁   ⣠⡿⠶⠟⠂  ⠙⠳⣄⣀ ⣀⡀        ', 
                    '     ⠻⠿⠿⠿⠟⠉     ⠈      ⠰⠶⠛⠙⠛⠋⠁         ',
                    ' ',
                    ' ',
                    ' ',
                },
                disable_move = true,
                center = {
                    {
                        desc = "Hello World",
                        action = "lua vim.cmd('Ex')"
                    }
                }
            }
        })
    end,
    dependencies = {
        { "nvim-tree/nvim-web-devicons" }
    }
}

