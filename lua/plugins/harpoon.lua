return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require("harpoon").setup({
            save_on_toggle = true
        })

        vim.keymap.set("n", "<leader>O", ":lua require('harpoon.mark').add_file()<cr>")
        vim.keymap.set("n", "<leader>o", ":lua require('harpoon.ui').toggle_quick_menu()<cr>")
    end
}

