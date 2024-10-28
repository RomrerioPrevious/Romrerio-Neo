require'nvim-treesitter.configs'.setup {
	ensure_installed = { 
        "lua", 
        "python", 
        "java", 
        "rust", 
        "markdown",
        "json",
        "json5",
        "css",
        "html"
    },

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
