return {
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = function()
    vim.opt.termguicolors = true
    vim.g.gruvbox_transparent_bg = true
    vim.cmd("colorscheme gruvbox")
    
  end },
}
