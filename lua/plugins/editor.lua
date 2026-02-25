return {
  -- 注释
  { "numToStr/Comment.nvim", opts = {} },

  -- 自动配对括号
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  -- 快速跳转
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    },
  },

  -- 终端
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<C-\>]],
        direction = "float",
        float_opts = { border = "curved" },
      })
    end
  },

  -- 文件树
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-tree").setup({
        view = { width = 30 },
        renderer = {
          group_empty = true,
          icons = {
            show = {
              git = true,
              folder = true,
              file = true,
            },
          },
        },
        filters = { dotfiles = false },
      })

      -- 文件树快捷键
      vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "切换文件树" })
      vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>", { desc = "聚焦文件树" })
    end
  },
}
