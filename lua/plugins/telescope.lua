return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = "move_selection_next",
            ["<C-k>"] = "move_selection_previous",
          },
        },
      },
    })
    pcall(require("telescope").load_extension, "fzf")

    -- Telescope 快捷键
    vim.keymap.set('n', '<C-p>', ":Telescope find_files<CR>", { desc = "查找文件" })
    vim.keymap.set('n', '<leader>ff', ":Telescope find_files<CR>", { desc = "查找文件" })
    vim.keymap.set('n', '<leader>fg', ":Telescope live_grep<CR>", { desc = "全局搜索" })
    vim.keymap.set('n', '<leader>fb', ":Telescope buffers<CR>", { desc = "切换缓冲区" })
    vim.keymap.set('n', '<leader>fh', ":Telescope help_tags<CR>", { desc = "帮助文档" })
    vim.keymap.set('n', '<leader>fo', ":Telescope oldfiles<CR>", { desc = "最近文件" })
  end
}
