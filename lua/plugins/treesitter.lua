require'nvim-treesitter.configs'.setup {
	ensure_installed = {"c", "cpp", "lua", "python", "javascript", "typescript"},
	sync_installed = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	}


}
