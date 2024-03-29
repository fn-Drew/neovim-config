local mark = require("harpoon.mark")
vim.cmd.colorscheme("catppuccin")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add to Harpoon" })
vim.keymap.set("n", "<C-h>", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-n>", function()
	ui.nav_file(1)
end)

vim.keymap.set("n", "<C-e>", function()
	ui.nav_file(2)
end)

vim.keymap.set("n", "<C-y>", function()
	ui.nav_file(3)
end)
