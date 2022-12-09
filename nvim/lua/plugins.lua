-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(
    function(use)
        -- Packer can manage itself
        use "wbthomason/packer.nvim"

        -- Javascript bundle.  Provides syntax highlighting and indentation
        use "pangloss/vim-javascript"

        -- React syntax highlighting and indenting
        use "maxmellon/vim-jsx-pretty"

        -- Git support
        use "tpope/vim-fugitive"

        -- Add icons to plugins
        use "kyazdani42/nvim-web-devicons"
        use "kyazdani42/nvim-tree.lua"

        -- Status/tabline for vim
        use "vim-airline/vim-airline"
        use "vim-airline/vim-airline-themes"

        -- Color preview
        use "gorodinskiy/vim-coloresque"

        -- Wrapper for Prettier
        use "prettier/vim-prettier"

        -- Comment stuff out
        use "terrortylor/nvim-comment"

        -- Asynchronous lint engine
        use "dense-analysis/ale"

        -- Formatting code
        use "sbdchd/neoformat"

        -- Use ripgrep in vim
        use "jremmen/vim-ripgrep"

        -- Highlight trailing whitespaces in red
        use "bronson/vim-trailing-whitespace"

        -- Insert or delete brackets, parens, quotes in pair
        use "jiangmiao/auto-pairs"

        -- Tokyo Night theme
        use "folke/tokyonight.nvim"

        -- OneDark theme
        use "navarasu/onedark.nvim"

        -- Material theme
        use "marko-cerovac/material.nvim"
        -- Git decorations
        use "lewis6991/gitsigns.nvim"

        -- Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
        use "sindrets/diffview.nvim"

        -- Automatic closing of quotes, parenthesis, brackets, etc.
        use "Raimondi/delimitMate"

        -- Python code folding
        use "tmhedberg/SimpylFold"

        -- Elixir support
        use "elixir-editors/vim-elixir"
        use "slashmili/alchemist.vim"
        use "mhinz/vim-mix-format"

        -- Collection of common configurations for Neovim's built-in language server client
        use "williamboman/nvim-lsp-installer"
        use "neovim/nvim-lspconfig"
        use "tami5/lspsaga.nvim"
        use "onsails/lspkind.nvim"

        -- Auto-completion
        use "hrsh7th/nvim-cmp"
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-buffer"
        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-cmdline"
        use "hrsh7th/cmp-nvim-lsp-signature-help"

        -- Snippets
        use "L3MON4D3/LuaSnip"
        use "saadparwaiz1/cmp_luasnip"
        use "rafamadriz/friendly-snippets"

        -- Tree-sitter support

        use {
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate"
        }
        use "nvim-treesitter/nvim-treesitter-textobjects"
        use "nvim-treesitter/playground"

        -- Add icons to other plugins
        use "ryanoasis/vim-devicons"

        -- Display lightbulb in the sign columns whenever textDocument/codeAction
        -- is available at the current cursor position
        use "kosayoda/nvim-lightbulb"

        -- Add "surroundings" (parentheses, brackets, quotes etc.) support. Allows for easy add/delete/edit of
        -- such surroundings.
        use "tpope/vim-surround"

        -- Implement vim Popup api in Neovim
        use "nvim-lua/popup.nvim"
        use "nvim-lua/plenary.nvim"

        -- Fuzzy finder
        use "nvim-telescope/telescope.nvim"

        -- Fancy start screen
        use "mhinz/vim-startify"

        -- Ranger integration
        use "francoiscabrol/ranger.vim"

        -- Delete a buffer without closing the window
        use "rbgrouleff/bclose.vim"

        -- Go language support
        use {
            "fatih/vim-go",
            run = ":GoUpdateBinaries"
        }

        -- Debug Adapter Protocol client for Neovim
        use "mfussenegger/nvim-dap"

        -- nvim-dap extension for providing configurations for launching go debugger
        use "leoluz/nvim-dap-go"

        -- UI for nvim-dap
        use "rcarriga/nvim-dap-ui"

        -- Add virtual text support to nvim-dap
        use "theHamsta/nvim-dap-virtual-text"

        -- EasyMotion like plugin allowing you to jump anywhere in a document with few keystrokes
        use "phaazon/hop.nvim"

        -- Use neovim terminal in floating/popup window
        use "voldikss/vim-floaterm"

        -- Useful mappings
        use "https://github.com/tpope/vim-unimpaired"

        -- Place, toggle, display marks
        use "https://github.com/kshenoy/vim-signature"

        -- Statusline/winbar component to show current code context
        use "SmiteshP/nvim-navic"

        -- Github copilot
        -- use 'github/copilot.vim'
    end
)
