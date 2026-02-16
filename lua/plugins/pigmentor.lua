return {
  'ImmanuelHaffner/pigmentor.nvim',

  opts = {
  },

  config = function(_, opts)
    require('pigmentor').setup(opts)
  end,
}
