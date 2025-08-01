return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				pickers = {
					find_files = {
						hidden = true,
					},
				},
			})
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>tf", builtin.find_files, {})
			vim.keymap.set("n", "<leader>tg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>to", builtin.oldfiles, {})
			vim.keymap.set("n", "<leader>tb", builtin.buffers, {})
			require("telescope").load_extension("ui-select")
		end,
	},
}
