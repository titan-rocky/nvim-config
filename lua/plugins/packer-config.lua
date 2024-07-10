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
	use({"sainnhe/everforest"})
	use({"catppuccin/nvim"})
        use({"shaunsingh/nord.nvim"})
        use({"ellisonleao/gruvbox.nvim"})
        use({"sainnhe/gruvbox-material"})

        -- LSP --
        use({"neovim/nvim-lspconfig"}) -- Base nvim lsp config
        use({"williamboman/mason.nvim"}) -- LSP package manager
        use({"williamboman/mason-lspconfig.nvim"}) -- compatibility with nvim-lspconfig
 	use({ "onsails/lspkind.nvim" }) -- vs-code like icons for autocompletion
	use({ "folke/neodev.nvim" })

	-- Autocomplete --
	use({ "windwp/nvim-autopairs" }) -- Autopairs
	use({ "windwp/nvim-ts-autotag", after="nvim-treesitter" }) -- Auto Tag Completion
        use({
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/nvim-cmp"
        })
        -- use({"ms-jpq/coq.nvim"})

	-- Utilities --
	use({"ThePrimeagen/harpoon", branch="harpoon2", dependencies = {"nvim-lua/plenary.nvim"}})
        use ({"ellisonleao/glow.nvim"})
        use({"L3MON4D3/LuaSnip",
            dependencies = {"rafamadriz/friendly-snippets"},
	    -- follow latest release.
            tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	    -- install jsregexp (optional!:).
	    run = "make install_jsregexp"
        })
        use({"saadparwaiz1/cmp_luasnip"})
        use({"brenoprata10/nvim-highlight-colors"})

	-- Extras --
	use({"andweeb/presence.nvim"}) -- Discord Rich Presence
	use({ "mbbill/undotree" }) -- Tree visualizer of past changes
	use({ "nvim-tree/nvim-web-devicons" })
        use({ "lewis6991/gitsigns.nvim" })
        use({ "sudoerwx/vim-ray-so-beautiful" })
	use({ "tpope/vim-fugitive" }) --
	-- Automatically source and re-compile packer whenever you save this init.lua
	local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
	vim.api.nvim_create_autocmd("BufWritePost", {
		command = "source <afile> | silent! LspStop | silent! LspStart | PackerCompile",
		group = packer_group,
		pattern = vim.fn.expand("$MYVIMRC"),
	})
end)
