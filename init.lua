require("core.keymaps")
require("core.options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("custom.plugins.theme"),
	require("custom.plugins.neotree"),
	require("custom.plugins.treesitter"),
	require("custom.plugins.lualine"),
	require("custom.plugins.telescope"),
	require("custom.plugins.lsp"),
	require("custom.plugins.autocompletion"),
	require("custom.plugins.autoformat"),
	require("custom.plugins.gitsigns"),
	require("custom.plugins.toggleterm"),
	require("custom.plugins.splash"),
	require("custom.plugins.copilot"),
	require("custom.plugins.misc"),
})
