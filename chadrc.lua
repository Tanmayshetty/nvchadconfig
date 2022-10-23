local M = {}

local override = require "custom.override"

M.plugins = {

   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },

      statusline = {
         separator_style = "round",
      },
   },

   override = {
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
      ["lukas-reineke/indent-blankline.nvim"] = override.blankline,
      ["williamboman/mason.nvim"] = override.mason,
   },

   user = require "custom.plugins",

   remove = {
      "folke/which-key.nvim",
   },
}

M.ui = {
   theme = "palenight",
   hl_override = require "custom.highlights",
}

M.mappings = require "custom.mappings"

return M
