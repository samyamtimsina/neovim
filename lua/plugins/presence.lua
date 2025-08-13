return {
  "andweeb/presence.nvim",
  config = function()
    require("presence"):setup({
      neovim_image_text = "Using Kitty + Neovim 🐱",
      client_name = "Kitty Terminal", -- replaces "Playing Neovim"
      editing_text = "Editing %s in Neovim",
      reading_text = "Reading %s",
      workspace_text = "Working on %s",
      line_number_text = "Line %s out of %s",
      main_image = "neovim",
      enable_line_number = true,
      buttons = true,
    })
  end,
}
