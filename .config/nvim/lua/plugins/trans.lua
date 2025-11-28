return {
  "xiyaowong/transparent.nvim",
  opts = {
    -- optional options, see the wiki for more details
  },
  config = function(_, opts)
    require("transparent").setup(opts)
  end,
}
