return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        transparent_background = false,
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          telescope = true,
        }
      })
    end
  },

  {
    "folke/tokyonight.nvim",
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = false,
      })
    end
  },

  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        transparent = false,
      })
    end
  },

  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    config = function()
      require("nightfox").setup({})
    end
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        variant = "main",
      })

      -- 主题切换功能
      local themes = {
        "catppuccin",
        "tokyonight",
        "kanagawa",
        "nightfox",
        "rose-pine",
      }

      local current_theme_index = 1

      -- 设置默认主题
      vim.cmd.colorscheme(themes[current_theme_index])

      -- 主题切换函数
      local function switch_theme()
        current_theme_index = current_theme_index % #themes + 1
        local theme = themes[current_theme_index]
        vim.cmd.colorscheme(theme)
        vim.notify("切换到主题: " .. theme, vim.log.levels.INFO)
      end

      -- 主题选择函数（通过 Telescope）
      local function select_theme()
        local pickers = require("telescope.pickers")
        local finders = require("telescope.finders")
        local actions = require("telescope.actions")
        local action_state = require("telescope.actions.state")
        local conf = require("telescope.config").values

        pickers.new({}, {
          prompt_title = "选择主题",
          finder = finders.new_table({
            results = themes,
          }),
          sorter = conf.generic_sorter({}),
          attach_mappings = function(prompt_bufnr)
            actions.select_default:replace(function()
              local selection = action_state.get_selected_entry()
              actions.close(prompt_bufnr)
              vim.cmd.colorscheme(selection[1])
              vim.notify("切换到主题: " .. selection[1], vim.log.levels.INFO)
              -- 更新当前主题索引
              for i, theme in ipairs(themes) do
                if theme == selection[1] then
                  current_theme_index = i
                  break
                end
              end
            end)
            return true
          end,
        }):find()
      end

      -- 注册快捷键
      vim.keymap.set("n", "<leader>th", switch_theme, { desc = "切换主题" })
      vim.keymap.set("n", "<leader>ts", select_theme, { desc = "选择主题" })
    end
  },
}
