return {
  -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require "cmp"
    -- modify the mapping part of the table
    -- disable key Up and Down
    opts.mapping["<Up>"] = cmp.config.disable
    opts.mapping["<Down>"] = cmp.config.disable

    -- return the new table to be used
    return opts
  end,
}