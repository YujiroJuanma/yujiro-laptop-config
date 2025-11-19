return {
  "neanias/everforest-nvim",
  version = false, -- Optional, use if you want to use the main branch
  lazy = false, -- Optional, load the plugin immediately
  priority = 1000, -- Make sure to load this before other plugins
  config = function()
    require("everforest").setup({
      -- Your optional configuration options here
    })
  end,
}

