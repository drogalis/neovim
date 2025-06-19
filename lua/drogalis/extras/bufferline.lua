return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				offsets = {
					{
						filetype = "NvimTree",
						text = "Nvim Tree",
						highlight = "Directory",
						separator = true,
					},
				},
			},
		})
		vim.keymap.set("n", "<leader>b", ":BufferLinePick<CR>")
	end,
}
