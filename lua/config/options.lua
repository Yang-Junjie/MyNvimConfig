-- leader 键
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 基础设置
vim.opt.number = true
vim.opt.relativenumber = true  -- 相对行号，方便跳转
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 300
vim.opt.timeoutlen = 500
vim.opt.scrolloff = 8  -- 滚动时保持8行边距
vim.opt.sidescrolloff = 8
vim.opt.wrap = false  -- 不自动换行
vim.opt.ignorecase = true  -- 搜索忽略大小写
vim.opt.smartcase = true  -- 智能大小写
vim.opt.hlsearch = true  -- 高亮搜索结果
vim.opt.incsearch = true  -- 增量搜索
vim.opt.splitright = true  -- 垂直分屏在右边
vim.opt.splitbelow = true  -- 水平分屏在下边
vim.opt.undofile = true  -- 持久化撤销
vim.opt.swapfile = false  -- 不创建交换文件
vim.opt.backup = false  -- 不创建备份文件
