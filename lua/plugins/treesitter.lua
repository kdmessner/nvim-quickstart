return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        "nvim-treesitter/nvim-treesitter-textobjects"
    },
    build = ":TSUpdate",
    config = function()
        vim.defer_fn(function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "vim",
                    "regex",
                    "lua",
                    "bash",
                    "markdown",
                    "markdown_inline",
                    "angular",
                    "c",
                    "css",
                    "diff",
                    "git_rebase",
                    "gitcommit",
                    "gitignore",
                    "graphql",
                    "html",
                    "javascript",
                    "json",
                    "scss",
                    "sql",
                    "tsx",
                    "typescript",
                },
                modules = {},
                auto_install = true,
                ignore_install = {},
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
                incremental_selection = {
                    keymaps = {
                        init_selection = false, --"gnn",
                        node_incremental = false, --"grn",
                        scope_incremental = false, --"grc",
                        node_decremental = false, --"grm",
                    }
                },
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["aa"] = "@parameter.outer",
                            ["ia"] = "@parameter.inner",
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                        }
                    },
                    move = {
                        enable = true,
                        set_jumps = true,
                        goto_next_start = {
                            ["<leader>ff"] = "@function.outer",
                            ["<leader>cc"] = "@class.outer",
                            ["<leader>aa"] = "@parameter.outer"
                        },
                        goto_next_end = {
                            ["<leader>fe"] = "@function.outer",
                            ["<leader>ce"] = "@class.outer",
                            ["<leader>ae"] = "@parameter.outer",
                        },
                        goto_previous_start = {
                            ["<leader>FF"] = "@function.outer",
                            ["<leader>CC"] = "@class.outer",
                            ["<leader>AA"] = "@parameter.outer",
                        },
                        goto_previous_end = {
                            ["<leader>FE"] = "@function.outer",
                            ["<leader>CE"] = "@class.outer",
                            ["<leader>AE"] = "@parameter.outer",
                        },
                    },
                    swap = {
                        enable = true,
                        swap_next = {
                            ["<leader>as"] = "@parameter.inner",
                            ["<leader>fs"] = "@function.inner",
                        },
                        swap_previous = {
                            ["<leader>AS"] = "@parameter.inner",
                            ["<leader>FS"] = "@function.inner",
                        }
                    }
                }
            })
        end, 0)
    end
}

