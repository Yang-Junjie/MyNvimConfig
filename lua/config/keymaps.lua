-- =============================
-- 通用快捷键配置
-- =============================

-- 取消搜索高亮
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", { silent = true })

-- 保存和退出
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "保存文件" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "退出" })
vim.keymap.set("n", "<leader>x", ":x<CR>", { desc = "保存并退出" })

-- 分屏跳转
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "跳转到左边窗口" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "跳转到下边窗口" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "跳转到上边窗口" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "跳转到右边窗口" })

-- 分屏大小调整
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "增加窗口高度" })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "减少窗口高度" })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "减少窗口宽度" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "增加窗口宽度" })

-- 缓冲区切换
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "下一个缓冲区" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "上一个缓冲区" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "关闭缓冲区" })

-- 移动选中行
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "向下移动选中行" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "向上移动选中行" })

-- 保持粘贴寄存器
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "粘贴不覆盖寄存器" })

vim.keymap.set("i", "jk", "<Esc>", { desc = "使用 jk 退出插入模式" })
