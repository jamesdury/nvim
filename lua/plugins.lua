function _G.reload_nvim_conf()
  for name,_ in pairs(package.loaded) do
    if name:match("^core") or name:match("^lsp") or name:match("^plugins") then
      package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
  vim.notify("Nvim configuration reloaded!", vim.log.levels.INFO)
end
-- PLUGINS

-- /home/user/.local/share/nvim/site/pack/packer/opt/packer.nvim
local packer_path =
  vim.fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
  vim.notify("Bootstrapping packer.nvim, please wait ...")
  vim.fn.system({
    "git",
    "clone",
    "https://github.com/wbthomason/packer.nvim",
    packer_path,
  })
end

vim.cmd("packadd packer.nvim")
local packer = require("packer")

packer.startup(function(use)
  use "wbthomason/packer.nvim"

  use "nvim-lua/plenary.nvim"

  use "nvim-telescope/telescope-fzf-native.nvim"
  use "nvim-telescope/telescope.nvim"
  use "nvim-treesitter/nvim-treesitter"
  use "tpope/vim-vinegar"

  -- [[ Git ]]
  use "lewis6991/gitsigns.nvim"
  use "samoshkin/vim-mergetool"
  use "tpope/vim-fugitive"
  use "zivyangll/git-blame.vim"

  -- [[ Code ]]
  use "dense-analysis/ale"
  use "direnv/direnv.vim"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/nvim-cmp"
  use "ms-jpq/coq_nvim"
  use "neovim/nvim-lspconfig"
  use "sindrets/diffview.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "williamboman/mason.nvim"
  use "williamboman/nvim-lsp-installer"

  -- [[ Theme ]]
  use "pineapplegiant/spaceduck"
  use "richin13/dracula.nvim"
  use "norcalli/nvim-colorizer.lua"

  use {
      "nvim-lualine/lualine.nvim",
      requires = {"kyazdani42/nvim-web-devicons",
      opt = true}
  }

  -- [[ Syntax ]]
  use "MaxMEllon/vim-jsx-pretty"
  use "andreshazard/vim-freemarker"
  use "pangloss/vim-javascript"
  use "LnL7/vim-nix"

  -- [[ Staging ]]
  use "luukvbaal/nnn.nvim"
  use "dhruvasagar/vim-table-mode"
  use "axvr/org.vim"
  use "scrooloose/vim-orgymode"
  use "kevinhwang91/nvim-bqf"

end)
