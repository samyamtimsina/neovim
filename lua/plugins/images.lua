return {
  -- First, add the luarocks.nvim plugin correctly
  {
    "vhyrro/luarocks.nvim",
    priority = 1000, -- It needs to run very early
    config = true,
  },

  -- Then, add the image.nvim plugin with the correct backend
  {
    "3rd/image.nvim",
    ft = { "markdown", "man", "tex", "qf", "text" }, -- Only load for specific filetypes
    config = function()
      require("image").setup({
        backend = "kitty",
        -- You can keep or remove the hijack_file_patterns if you like
        -- hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.svg" },
      })
    end,
    -- Luarocks.nvim is a dependency for image.nvim
    dependencies = { "vhyrro/luarocks.nvim" },
  },
}
