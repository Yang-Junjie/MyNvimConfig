return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
       -- Python
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        -- C/C++
        null_ls.builtins.formatting.clang_format,
    },
    })
    -- 快捷键：<leader>f 格式化当前文件
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
  end,
}
