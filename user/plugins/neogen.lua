return {
  {
    "danymat/neogen",
    cmd = "Neogen",
    config = function()
      require("neogen").setup {
        enable = true,
        input_after_comment = false, -- (default: true) automatic jump (with insert mode) on inserted annotation
        languages = {
          python = {
            template = {
              annotation_convention = "reST",
            },
          },
        },
      }
    end,
    requires = "nvim-treesitter/nvim-treesitter",
    -- Uncomment next line if you want to follow only stable versions
    version = "*",
  }
}
