-- GLOBAL SETTINGS
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- font
vim.g.have_nerd_font = true

-- rustaceanvim
vim.g.rustaceanvim = {
    server = {
      cmd = function()
	local mason_registry = require('mason-registry')
	local ra_binary = mason_registry.is_installed('rust-analyzer')
	  -- This may need to be tweaked, depending on the operating system.
	  and mason_registry.get_package('rust-analyzer'):get_install_path() .. "/rust-analyzer"
	  or "rust-analyzer"
	return { ra_binary }
      end,
    },
  }
