-- Personal Keybinds -- Adding when needed

local map = LazyVim.safe_keymap_set
-- Setting leader
vim.keymap.set({ "n", "v" }, "<SPACE>", "<Nop>", { noremap = true })
vim.g.mapleader = " "

-- setting a new escape normal mode key
vim.keymap.set("i", "<leader>jf", "<ESC>")

-- changing the floating terminal keybind
map("n", "<leader>ft", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })
