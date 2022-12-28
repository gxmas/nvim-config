-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
    function(use)
        ---------------------
        -- Package Manager --
        ---------------------

        use('wbthomason/packer.nvim')

        ----------------------
        -- Required plugins --
        ----------------------

        use('nvim-lua/plenary.nvim')

        ------------------
        -- Color Scheme --
        ------------------

        use('gruvbox-community/gruvbox')
        use('folke/tokyonight.nvim')

        use('nvim-tree/nvim-web-devicons')

        -----------------------------------
        -- Treesitter: Better Highlights --
        -----------------------------------

        use({
            {
                'nvim-treesitter/nvim-treesitter',
                event = 'CursorHold',
                run = ':TSUpdate',
                config = function()
                    require('plugins.treesitter')
                end,
            },
            { 'nvim-treesitter/playground', after = 'nvim-treesitter' },
            { 'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter' },
            { 'nvim-treesitter/nvim-treesitter-refactor', after = 'nvim-treesitter' },
            { 'windwp/nvim-ts-autotag', after = 'nvim-treesitter' },
            { 'JoosepAlviste/nvim-ts-context-commentstring', after = 'nvim-treesitter' },
        })

        ---------------------------------
        -- Navigation and Fuzzy Search --
        ---------------------------------

        use({
            {
                'nvim-telescope/telescope.nvim',
                event = 'CursorHold',
                config = function()
                    require('plugins.telescope')
                end,
            },
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                after = 'telescope.nvim',
                run = 'make',
                config = function()
                    require('telescope').load_extension('fzf')
                end,
            },
            {
                'nvim-telescope/telescope-symbols.nvim',
                after = 'telescope.nvim',
            },
        })

        ---------------------
        -- Navigation tree --
        ---------------------

        use({
                'nvim-tree/nvim-tree.lua',
                requires = {
                    'nvim-tree/nvim-web-devicons'    
                },
                cmd = { 'NvimTreeToggle', 'NvimTreeClose' },
                config = function()
                    require('plugins.nvim-tree')
                end,
            }
        )

        -------------
        -- Haskell --
        -------------

        use('neovimhaskell/haskell-vim')

        ----------------
        -- ToggleTerm --
        ----------------
        --

        use({
                'akinsho/toggleterm.nvim', 
                tag = '*', 
                config = function()
                    require("plugins.toggleterm")
                end,
            }
        )

    end
})
