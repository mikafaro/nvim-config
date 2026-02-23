return {
  "lervag/vimtex",
  lazy = false, -- already lazy (filetype plugin)
  init = function()
    vim.g.vimtex_view_method = "zathura"
  end
}
