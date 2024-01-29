return {
    "mrjones2014/smart-splits.nvim",
    config = function()
        local splits = require("smart-splits")
        splits.setup()

        vim.keymap.set("n", "<a-h>", splits.resize_left)
        vim.keymap.set("n", "<a-j>", splits.resize_down)
        vim.keymap.set("n", "<a-k>", splits.resize_up)
        vim.keymap.set("n", "<a-l>", splits.resize_right)

        vim.keymap.set("n", "<leader>h", splits.move_cursor_left)
        vim.keymap.set("n", "<leader>j", splits.move_cursor_down)
        vim.keymap.set("n", "<leader>k", splits.move_cursor_up)
        vim.keymap.set("n", "<leader>l", splits.move_cursor_right)

        vim.keymap.set("n", "<c-h>", ":leftabove :vsplit<cr>")
        vim.keymap.set("n", "<c-j>", ":rightbelow :split<cr>")
        vim.keymap.set("n", "<c-k>", ":leftabove :split<cr>")
        vim.keymap.set("n", "<c-l>", ":rightbelow :vsplit<cr>")

        vim.keymap.set("n", "<leader><leader>h", splits.swap_buf_left)
        vim.keymap.set("n", "<leader><leader>j", splits.swap_buf_down)
        vim.keymap.set("n", "<leader><leader>k", splits.swap_buf_up)
        vim.keymap.set("n", "<leader><leader>l", splits.swap_buf_right)
    end
}

