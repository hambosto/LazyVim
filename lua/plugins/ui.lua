return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    opts = {
      extra_groups = {
        "BqfPreviewFloat",
        "NormalFloat",
        "NormalNC",
        "NvimTreeNormal",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreePreview",
        "NeoTreeTabInactive",
        "LineNr",
        "CursorColumn",
        "CursorLine",
        "CursorLineNr",
        "FloatBorder",
        "WinBar",
        "WinBarNC",
        "TreesitterContext",
        "DapUIPlayPause",
        "DapUIRestart",
        "DapUIStop",
        "DapUIStepOut",
        "DapUIStepBack",
        "DapUIStepInto",
        "DapUIStepOver",
        "DapUIPlayPauseNC",
        "DapUIRestartNC",
        "DapUIStopNC",
        "DapUIStepOutNC",
        "DapUIStepBackNC",
        "DapUIStepIntoNC",
        "DapUIStepOverNC",
        "SignColumn",
        "StatusLine",
        "TelescopeBorder",
        "TelescopeNormal",
        "TelescopePreviewNormal",
        "TelescopeResultsNormal",
        "TelescopePromptNormal",
        "TabLineFill",
        "TreesitterContextLineNumber",
        "QuickFixLine",
        -- "Pmenu",
        -- "PmenuSel",
        -- "PmenuSbar",
        -- "PmenuThumb",
        "NotifyINFOBody",
        "NotifyWARNBody",
        "NotifyERRORBody",
        "NotifyDEBUGBody",
        "NotifyTRACEBody",
        "NotifyINFOBorder",
        "NotifyWARNBorder",
        "NotifyERRORBorder",
        "NotifyDEBUGBorder",
        "NotifyTRACEBorder",
        "WhichKeyFloat",
      },
    },
    config = function(_, opts)
      local transparent = require("transparent")
      transparent.setup(opts)
      transparent.clear_prefix("BufferLine")
      transparent.clear_prefix("NeoTree")
      -- transparent.clear_prefix("lualine")
      transparent.clear_prefix("Noice")
      transparent.clear_prefix("SnacksNotifier")
      vim.keymap.set("n", "<leader>ut", "<cmd>TransparentToggle<cr>", { desc = "Toggle transparency" })
    end,
  },

  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
