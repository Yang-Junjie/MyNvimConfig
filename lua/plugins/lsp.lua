return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
    -- 当 LSP 连接到缓冲区时执行的快捷键
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
      end,
    })

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Neovim 0.11+ 推荐的新方式：
    -- 如果新 API 不可用（版本稍低），会自动回退到旧 API
    local servers = { "clangd","cmake", "rust_analyzer","vtsls","eslint" ,"pyright"}

    for _, lsp in ipairs(servers) do
      -- 尝试使用新版 API 配置
      if vim.lsp.config then
          vim.lsp.config(lsp, {
              capabilities = capabilities,
          })
          vim.lsp.enable(lsp)
      else
          -- 0.10 及以下版本的回退方案
          require('lspconfig')[lsp].setup({
              capabilities = capabilities,
          })
      end
    end
  end
}
