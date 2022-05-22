-- Set theme. For Tokyonight, this has to happen after sourcing the vim-plug/plugins.vim file.
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
--vim.g.tokyonight_transparent = true

-- Load the colorscheme
--vim.cmd[[colorscheme tokyonight]]
