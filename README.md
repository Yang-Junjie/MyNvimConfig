# Neovim 配置使用手册

## 目录
- [安装与启动](#安装与启动)
- [基础操作](#基础操作)
- [文件管理](#文件管理)
- [编辑功能](#编辑功能)
- [代码导航](#代码导航)
- [LSP 功能](#lsp-功能)
- [Git 集成](#git-集成)
- [终端](#终端)
- [插件列表](#插件列表)

---

## 安装与启动

### 首次启动
```bash
nvim
```

首次启动时，Lazy.nvim 会自动安装所有插件。等待安装完成后重启 Neovim。

### 插件管理
- `:Lazy` - 打开插件管理器
- `:Lazy update` - 更新所有插件
- `:Lazy sync` - 同步插件（安装缺失的，更新已有的）

---
### 快速初始化 C++ 开发环境
在你的 ~/.zshrc 或 ~/.bashrc 中加入：

```Bash
init_cpp_env() {
  cp ~/.config/nvim/templates/.clangd .
  cp ~/.config/nvim/templates/.clang-format .
  echo "✅ Clangd and Format configs deployed to $(pwd)"
}```
只需要输入 init_cpp_env 就能配置好clangd了。

## 基础操作

### Leader 键
Leader 键设置为 **空格键**，大部分自定义快捷键都以 `<Space>` 开头。

### 基本快捷键
| 快捷键 | 功能 | 模式 |
|--------|------|------|
| `<Space>w` | 保存文件 | Normal |
| `<Space>q` | 退出 | Normal |
| `<Space>x` | 保存并退出 | Normal |
| `<Esc>` | 取消搜索高亮 | Normal |

---

## 文件管理

### 文件树 (NvimTree)
| 快捷键 | 功能 |
|--------|------|
| `Ctrl+n` | 切换文件树显示/隐藏 |
| `<Space>e` | 聚焦到文件树 |

#### 文件树内操作
| 按键 | 功能 |
|------|------|
| `a` | 新建文件/文件夹 |
| `d` | 删除文件 |
| `r` | 重命名 |
| `x` | 剪切 |
| `c` | 复制 |
| `p` | 粘贴 |
| `y` | 复制文件名 |
| `Y` | 复制相对路径 |
| `gy` | 复制绝对路径 |
| `Enter` | 打开文件 |
| `o` | 打开文件 |
| `<Tab>` | 预览文件 |
| `R` | 刷新 |
| `H` | 显示/隐藏隐藏文件 |

### 模糊查找 (Telescope)
| 快捷键 | 功能 |
|--------|------|
| `Ctrl+p` | 查找文件 |
| `<Space>ff` | 查找文件 |
| `<Space>fg` | 全局搜索文本 |
| `<Space>fb` | 切换已打开的缓冲区 |
| `<Space>fh` | 搜索帮助文档 |
| `<Space>fo` | 最近打开的文件 |

#### Telescope 内操作
| 按键 | 功能 |
|------|------|
| `Ctrl+j` | 下一个结果 |
| `Ctrl+k` | 上一个结果 |
| `Enter` | 打开选中项 |
| `Ctrl+x` | 水平分屏打开 |
| `Ctrl+v` | 垂直分屏打开 |
| `Esc` | 关闭 |

---

## 编辑功能

### 注释 (Comment.nvim)
| 快捷键 | 功能 | 模式 |
|--------|------|------|
| `gcc` | 注释/取消注释当前行 | Normal |
| `gc` | 注释/取消注释选中内容 | Visual |
| `gbc` | 块注释当前行 | Normal |
| `gb` | 块注释选中内容 | Visual |

### 自动补全 (nvim-cmp)
| 快捷键 | 功能 |
|--------|------|
| `Tab` | 选择下一个补全项 |
| `Enter` | 确认选中的补全项 |
| `Ctrl+Space` | 手动触发补全 |

### 移动选中行
| 快捷键 | 功能 | 模式 |
|--------|------|------|
| `J` | 向下移动选中行 | Visual |
| `K` | 向上移动选中行 | Visual |

### 粘贴
| 快捷键 | 功能 | 模式 |
|--------|------|------|
| `<Space>p` | 粘贴但不覆盖寄存器 | Visual |

### 快速跳转 (Flash)
| 快捷键 | 功能 | 模式 |
|--------|------|------|
| `s` | 快速跳转到任意位置 | Normal/Visual |
| `S` | 基于语法树跳转 | Normal/Visual |

---

## 代码导航

### 窗口管理
| 快捷键 | 功能 |
|--------|------|
| `Ctrl+h` | 跳转到左边窗口 |
| `Ctrl+j` | 跳转到下边窗口 |
| `Ctrl+k` | 跳转到上边窗口 |
| `Ctrl+l` | 跳转到右边窗口 |
| `Ctrl+Up` | 增加窗口高度 |
| `Ctrl+Down` | 减少窗口高度 |
| `Ctrl+Left` | 减少窗口宽度 |
| `Ctrl+Right` | 增加窗口宽度 |

### 缓冲区管理
| 快捷键 | 功能 |
|--------|------|
| `Shift+l` | 下一个缓冲区 |
| `Shift+h` | 上一个缓冲区 |
| `<Space>bd` | 关闭当前缓冲区 |

### 增量选择 (Treesitter)
| 快捷键 | 功能 | 模式 |
|--------|------|------|
| `Enter` | 初始化选择/扩大选择 | Normal/Visual |
| `Backspace` | 缩小选择 | Visual |

---

## LSP 功能

### 代码操作
| 快捷键 | 功能 |
|--------|------|
| `gd` | 跳转到定义 |
| `K` | 显示悬浮文档 |
| `<Space>rn` | 重命名符号 |
| `<Space>ca` | 代码操作 |
| `<Space>f` | 格式化当前文件 |

### 诊断信息
| 快捷键 | 功能 |
|--------|------|
| `[d` | 上一个诊断 |
| `]d` | 下一个诊断 |
| `<Space>d` | 显示诊断浮窗 |

---

## Git 集成

### Git 操作 (Gitsigns)
| 快捷键 | 功能 |
|--------|------|
| `<Space>gb` | 显示当前行的 Git blame |
| `<Space>gp` | 预览当前 hunk 的改动 |
| `<Space>gr` | 重置当前 hunk |

### Git 标记
- `+` - 新增行
- `~` - 修改行
- `_` - 删除行

---

## 终端

### ToggleTerm
| 快捷键 | 功能 |
|--------|------|
| `Ctrl+\` | 打开/关闭浮动终端 |

在终端模式下：
- `Ctrl+\` - 隐藏终端（不关闭）
- `exit` 或 `Ctrl+d` - 关闭终端

---

## 插件列表

### 主题与外观
- **catppuccin/nvim** - Catppuccin Mocha 主题
- **nvim-lualine/lualine.nvim** - 状态栏
- **lukas-reineke/indent-blankline.nvim** - 缩进线
- **norcalli/nvim-colorizer.lua** - 颜色预览
- **goolord/alpha-nvim** - 启动页面

### 文件管理
- **nvim-tree/nvim-tree.lua** - 文件树
- **nvim-telescope/telescope.nvim** - 模糊查找

### 编辑增强
- **nvim-treesitter/nvim-treesitter** - 语法高亮和代码解析
- **numToStr/Comment.nvim** - 快速注释
- **windwp/nvim-autopairs** - 自动配对括号
- **folke/flash.nvim** - 快速跳转

### LSP 与补全
- **neovim/nvim-lspconfig** - LSP 配置
- **hrsh7th/nvim-cmp** - 自动补全引擎
- **nvimtools/none-ls.nvim** - 格式化和诊断

### Git
- **lewis6991/gitsigns.nvim** - Git 集成

### 工具
- **akinsho/toggleterm.nvim** - 终端管理
- **folke/which-key.nvim** - 按键提示

---

## 常见问题

### 如何安装 LSP 服务器？

配置中已包含以下 LSP：
- `clangd` - C/C++
- `cmake` - CMake
- `rust_analyzer` - Rust
- `vtsls` - TypeScript/JavaScript
- `eslint` - JavaScript/TypeScript linting
- `pyright` - Python

需要手动安装对应的 LSP 服务器：

```bash
# C/C++
sudo pacman -S clang

# Rust
rustup component add rust-analyzer

# Python
pip install pyright black isort

# TypeScript/JavaScript
npm install -g @vtsls/language-server eslint

# CMake
pip install cmake-language-server
```

### 如何更改主题？

编辑 `~/.config/nvim/init.lua`，找到 Catppuccin 配置部分，修改 `flavour`：
```lua
flavour = "mocha"  -- 可选: latte, frappe, macchiato, mocha
```

### 如何添加新插件？

在 `require("lazy").setup({})` 中添加插件配置：
```lua
{
  "作者/插件名",
  config = function()
    -- 插件配置
  end
}
```

然后运行 `:Lazy sync`

---

## 学习资源

- Neovim 官方文档: `:help`
- Lazy.nvim 文档: https://github.com/folke/lazy.nvim
- 查看某个插件的帮助: `:help 插件名`

---

**提示**: 按 `<Space>` 后稍等片刻，which-key 会显示所有可用的快捷键提示！
