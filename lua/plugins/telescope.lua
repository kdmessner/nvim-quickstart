return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            cond = function()
                return vim.fn.executable("make") == 1
            end
        }
    },
    config = function()
        require("telescope").setup({
            pickers = {
                buffers = {
                    sort_mru = true,
                    sort_lastused = true
                },
                lsp_definitions = {
                    jump_type = "vsplit"
                },
                lsp_implementations = {
                    jump_type = "vsplit"
                }
            }
        })

        pcall(require("telescope").load_extension, "fzf")
        local builtins = require("telescope.builtin")
        local n = "n"

        vim.keymap.set(n, "<leader>tf", builtins.find_files, {})
        vim.keymap.set(n, "<leader>tg", builtins.live_grep, {})
        vim.keymap.set(n, "<leader>tb", builtins.buffers, {})
        vim.keymap.set(n, "<leader>tm", builtins.marks, {})
        vim.keymap.set(n, "<leader>d", builtins.lsp_definitions, {})
        vim.keymap.set(n, "<leader>r", builtins.lsp_references, {})
        vim.keymap.set(n, "<leader>i", builtins.lsp_implementations, {})
    end
}

