return {
  -- 状态栏
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          theme = "catppuccin",
          component_separators = "|",
          section_separators = { left = "", right = "" },
        },
      })
    end
  },

  -- 启动页面
  {
    "goolord/alpha-nvim",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      dashboard.section.buttons.val = {
        dashboard.button("f", "  查找文件", ":Telescope find_files<CR>"),
        dashboard.button("r", "  最近文件", ":Telescope oldfiles<CR>"),
        dashboard.button("g", "  全局搜索", ":Telescope live_grep<CR>"),
        dashboard.button("c", "  配置", ":e ~/.config/nvim/init.lua<CR>"),
        dashboard.button("q", "  退出", ":qa<CR>"),
      }
      alpha.setup(dashboard.config)
    end
  },

  -- 缩进线
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup({
        indent = { char = "│" },
        scope = { enabled = false },
      })
    end
  },

  -- 显示按键提示
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup()
    end
  },

  -- 显示颜色
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end
  },
}
