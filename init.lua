vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = "yes"
vim.wo.cursorline = true
vim.wo.wrap = false

vim.o.hlsearch = false
vim.o.mouse = nil
vim.o.termguicolors = true
vim.o.clipboard = "unnamedplus"
vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.completeopt = "menuone,noselect"
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.numberwidth = 8
vim.o.fillchars = "eob: "

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("t", "<esc>", "<c-\\><c-n>")

vim.keymap.set({ "n", "v" }, "<space>", "<Nop>", { silent = true })
vim.keymap.set("n", "<leader>pv", ":Ex<cr>", {})
vim.keymap.set("i", "jj", "<esc>", {})
vim.keymap.set(
    "n", "k", "v:count == 0 ? 'gk' : 'k'",
    { expr = true, silent = true }
)
vim.keymap.set(
    "n", "j", "v:count == 0 ? 'gj' : 'j'",
    { expr = true, silent = true }
)
vim.keymap.set({ "n", "v" }, "<leader>v", "<c-v>", {})

local highlight_group = vim.api.nvim_create_augroup(
    "YankHighlight",
    { clear = true }
)
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = "*",
})

-- keep cursor centered
vim.api.nvim_create_autocmd({
    "CursorMoved", "CursorMovedI", "BufEnter"
}, {
    callback = function()
        local previous_pos = vim.api.nvim_win_get_cursor(0)
        vim.cmd("norm! zz")
        vim.api.nvim_win_set_cursor(0, previous_pos)
    end
})

require("package_manager")


