-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
    function(use)
        use('wbthomason/packer.nvim')

        use('nvim-lua/plenary.nvim')

        use('EdenEast/nightfox.nvim')
        -- use('gruvbox-community/gruvbox')
        -- use('folke/tokyonight.nvim')
        -- use({
        --         'rose-pine/neovim',
        --         as = 'rose-pine',
        -- })

        use('nvim-tree/nvim-web-devicons')

        use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
        use('nvim-treesitter/playground')

        use('nvim-telescope/telescope.nvim')

        use({
                'nvim-tree/nvim-tree.lua',
                requires = {
                    'nvim-tree/nvim-web-devicons'
                },
                cmd = { 'NvimTreeToggle', 'NvimTreeClose' },
                config = function()
                    require('plugins.nvim-tree')
                end,
            })

        use({
                'akinsho/toggleterm.nvim', 
                tag = '*',
            }
        )

        use('neovim/nvim-lspconfig')

        use('hrsh7th/nvim-cmp')
        use('hrsh7th/cmp-nvim-lsp')
        use('hrsh7th/cmp-buffer')
        use('hrsh7th/cmp-path')
        use('L3MON4D3/LuaSnip')
        use('saadparwaiz1/cmp_luasnip')

        use('neovimhaskell/haskell-vim')

        use('cappyzawa/trim.nvim')

    end
})
