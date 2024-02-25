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

	-- Autopairs --
	use({ "windwp/nvim-autopairs" }) -- Autopairs
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- HTML/XML Tag autocompletion

	-- Utilities
	use({"ThePrimeagen/harpoon"})
	
	-- Extras
	use({"andweeb/presence.nvim"}) -- Discord Rich Presence
	use({ "mbbill/undotree" }) -- Tree visualizer of past changes
	use({ "nvim-tree/nvim-web-devicons" })
	use({ "lewis6991/gitsigns.nvim" })

	-- Automatically source and re-compile packer whenever you save this init.lua
	local packer_group = vim.api.nvim_create_augroup("Packer", { clear = true })
	vim.api.nvim_create_autocmd("BufWritePost", {
		command = "source <afile> | silent! LspStop | silent! LspStart | PackerCompile",
		group = packer_group,
		pattern = vim.fn.expand("$MYVIMRC"),
	})
end)
