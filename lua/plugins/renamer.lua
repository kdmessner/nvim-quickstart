return {
    "filipdutescu/renamer.nvim",
    branch = "master",
    dependencies = {
        { "nvim-lua/plenary.nvim" }
    },
    config = function()
        local opts = { noremap = true, silent = true }
        vim.api.nvim_set_keymap("n", "<leader>rn", "<cmd>lua require('renamer').rename()<cr>", opts)
        vim.api.nvim_set_keymap("v", "<leader>rn", "<cmd>lua require('renamer').rename()<cr>", opts)
        require("renamer").setup({})
    end
}

