
require("catppuccin").setup({
  flavour = "macchiato",
  transparent_background = true,
  dim_inactive =  {
    enabled = false,  -- enable to dim inactive windows, looks bad tbh, at least with transparency
    percentage = 2,
  },
  integrations = {
    nvimtree = true,
    telescope = true,
    cmp = true,
  },
})

local colorscheme = "catppuccin"

-- notify when colorscheme is not found, avoids error message.
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found.")
  return
end
