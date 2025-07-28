vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Primary
	use({ "wbthomason/packer.nvim" })
	use({
		"nvim-telescope/telescope.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "BurntSushi/ripgrep" },
			{ "sharkdp/fd" },
		},
	})
        use({"nvim-tree/nvim-tree.lua"})
	use({"nvim-treesitter/nvim-treesitter",run=":TSUpdate"})
	use({ "nvim-treesitter/playground" })

	-- Color Schemes
	-- use({"sainnhe/everforest"})
        use({"neanias/everforest-nvim"})
        use({"shaunsingh/nord.nvim"})
        use({"sainnhe/gruvbox-material"})

        -- LSP --
        use({"neovim/nvim-lspconfig"}) -- Base nvim lsp config
        use({"williamboman/mason.nvim"}) -- LSP package manager
        use({"williamboman/mason-lspconfig.nvim"}) -- compatibility with nvim-lspconfig
 	use({ "onsails/lspkind.nvim" }) -- vs-code like icons for autocompletion
	use({ "folke/neodev.nvim" })

	-- Autocomplete --
	use({ "windwp/nvim-autopairs" }) -- Autopairs
	use({ "windwp/nvim-ts-autotag", after="nvim-treesitter"}) -- Auto Tag Completion
        use({
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/nvim-cmp",
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets"
        })
        -- use({"ms-jpq/coq.nvim"})

	-- Utilities --
	use({"ThePrimeagen/harpoon", branch="harpoon2", dependencies = {"nvim-lua/plenary.nvim"}})
        use ({"ellisonleao/glow.nvim"})
        use({"L3MON4D3/LuaSnip",
            dependencies = {"rafamadriz/friendly-snippets"},
            tag = "v2.*",
	    run = "make install_jsregexp"
        })
        use({"brenoprata10/nvim-highlight-colors"})

	-- Extras --
        use "~/Projects/weather-reporto.nvim";
	use({"andweeb/presence.nvim"}) -- Discord Rich Presence
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        }
	use({ "mbbill/undotree" }) -- Tree visualizer of past changes
	use({ "nvim-tree/nvim-web-devicons" })
        use({ "lewis6991/gitsigns.nvim" })
        use({ "sudoerwx/vim-ray-so-beautiful" })
	use({ "tpope/vim-fugitive" }) --
        use({ "xiyaowong/nvim-transparent" }) -- Transparency
	-- Automatically source and re-compile packer whenever you save this init.lua
	local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
	vim.api.nvim_create_autocmd("BufWritePost", {
		command = "source <afile> | silent! LspStop | silent! LspStart | PackerCompile",
		group = packer_group,
		pattern = vim.fn.expand("$MYVIMRC"),
	})
end)
