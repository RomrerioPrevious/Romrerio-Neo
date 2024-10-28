require'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "python", "java", "rust" },

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
