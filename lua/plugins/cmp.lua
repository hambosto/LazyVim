return {
  {
    "hrsh7th/nvim-cmp",
    config = function(_, opts)
      local cmp = require("cmp")

      local mappings = {
        ["<Up>"] = cmp.mapping.select_prev_item(),
        ["<Down>"] = cmp.mapping.select_next_item(),
        ["<Tab>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Replace,
          select = true,
        }),
      }
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, mappings)
      cmp.setup(opts)
    end,
  }
}
