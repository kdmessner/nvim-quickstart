return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
        { "neovim/nvim-lspconfig" },
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },
        { "folke/neodev.nvim", opts = {} },

        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "saadparwaiz1/cmp_luasnip" },
        { "hrsh7th/cmp-nvim-lua" },

        { "L3MON4D3/LuaSnip" },
        { "rafamadriz/friendly-snippets" }
    },
    config = function()
        require("neodev").setup({})

        local lsp_zero = require("lsp-zero")

        lsp_zero.on_attach(function(_, bufnr)
            lsp_zero.default_keymaps({ buffer = bufnr })
        end)

        local servers = {
            lua_ls = {
                Lua = {
                    workspace = { checkThirdParty = false },
                    telemetry = { enable = false },
                    diagnostics = {
                        disable = { "missing-fields" },
                    }
                }
            }
        }

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

        require("mason").setup({})
        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(servers),
            handlers = {
                lsp_zero.default_setup
            }
        })

        require("lspconfig").lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            }
        })

        local cmp = require("cmp")
        cmp.setup({
            mapping = {
                ["<tab>"] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Replace,
                    select = true
                })
            }
        })
    end
}

