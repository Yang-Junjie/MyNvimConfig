return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
    })

    -- Git 快捷键
    vim.keymap.set('n', '<leader>gb', ":Gitsigns blame_line<CR>", { desc = "Git blame" })
    vim.keymap.set('n', '<leader>gp', ":Gitsigns preview_hunk<CR>", { desc = "预览 hunk" })
    vim.keymap.set('n', '<leader>gr', ":Gitsigns reset_hunk<CR>", { desc = "重置 hunk" })
  end
}
