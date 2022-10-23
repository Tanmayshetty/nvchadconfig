local M = {}

--
-- M.disabled = {
--    "<C-n>",
-- }

M.truzen = {
  n = {
    ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "   truzen ataraxis" },
    ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
    ["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
  },
}

M.treesitter = {
  n = {
    ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
  },
}

M.trouble = {
  n = {
    ["<leader>ts"] = { "<cmd> TroubleToggle <CR>", "  Toggle Diagnostics" },
  },
}
return M
