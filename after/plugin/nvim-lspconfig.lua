local status_ok, lspconfig = pcall(require, 'lspconfig')
if not status_ok then
    return
end

local cmp_lsp_ok, cmp_lsp = pcall(require, 'cmp_nvim_lsp')

local capabilities = {}
if cmp_lsp_ok then
     capabilities = cmp_lsp.default_capabilities()
end

lspconfig.hls.setup({
    capabilities = capabilities,
    on_attach = function()
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0 })
        vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, { buffer = 0 })
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
        vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', { buffer = 0 })
        vim.keymap.set('n', '<leader>dj', vim.diagnostic.goto_next, { buffer = 0 })
        vim.keymap.set('n', '<leader>dk', vim.diagnostic.goto_prev, { buffer = 0 })
        vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, { buffer = 0 })
        vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action, { buffer = 0 })
    end,
})
