require('nvim-treesitter.install').compilers = { "zig" }
require('nvim-treesitter.configs').setup {
	ensure_installed = {
        "python",
		"java",
		"rust",
		"lua",
		"c",
		"json",
		"css",
		"html",
    },

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
