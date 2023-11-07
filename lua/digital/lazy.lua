local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


require('lazy').setup({

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.4',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Themes to find one that i like
    -- picked theme is defined in colors.lua
    { "catppuccin/nvim" },        -- Color/Theme scheme
    { "EdenEast/nightfox.nvim" }, -- Color/Theme scheme
    -- Not so great, but decent
    { "navarasu/onedark.nvim" },  -- Color/Theme scheme
    { "folke/tokyonight.nvim" },  -- Color/Theme scheme

    -- Status bar
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },

    -- Vim+Tmux navigation between panes
    { 'christoomey/vim-tmux-navigator' },

    -- Treesitter and undotree (best thing ever)
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate', },
    { 'nvim-treesitter/playground' },
    { 'mbbill/undotree' },

    -- LSP confguration
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim'
        },
    },

    -- Autocomplete configuratoin
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            -- Snipet Engine and its associated nvim-cmp source
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',

            -- ADD LSP completition capabilities
            'hrsh7th/cmp-nvim-lsp',

            -- Adds a number of user-friendly snippets
            'rafamadriz/friendly-snippets',
        }
    },

    -- Autopairs for brackets and quotation marks - lazy to type
    { 'windwp/nvim-autopairs', event = "InsertEnter" }

})
