-- ~/.config/nvim/init.lua

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- =====================
-- Basic settings
-- =====================

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = ""
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.clipboard = "unnamedplus"

vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrap = false

-- =====================
-- Keymaps
-- =====================

vim.keymap.set("n", "<leader>w", "<cmd>write<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })
vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- =====================
-- Plugins with vim.pack
-- =====================

vim.pack.add({
  { src = "https://github.com/folke/tokyonight.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
})

-- =====================
-- Theme
-- =====================

vim.cmd.colorscheme("tokyonight")

-- =====================
-- Telescope
-- =====================

vim.keymap.set("n", "<leader>sw", function()
  require("telescope.builtin").grep_string()
end, { desc = "Find word under cursor" })

vim.keymap.set("n", "<leader>sf", function()
  require("telescope.builtin").find_files()
end, { desc = "Find files" })

vim.keymap.set("n", "<leader>sg", function()
  require("telescope.builtin").live_grep()
end, { desc = "Live grep" })

vim.keymap.set("n", "<leader>sb", function()
  require("telescope.builtin").buffers()
end, { desc = "Find buffers" })

vim.keymap.set("n", "<leader>sh", function()
  require("telescope.builtin").help_tags()
end, { desc = "Find help" })

-- =====================
-- LSP
-- =====================

vim.lsp.enable({
  "clangd",
})

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- =====================
-- Plugin management
-- =====================

vim.keymap.set("n", "<leader>pu", function()
  vim.pack.update()
end, { desc = "Update plugins" })
