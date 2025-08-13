return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- See Configuration section for options
    },

    keys = {
      { "<leader>z", mode = { "n", "v" }, desc = "Copilot Actions" },
      { "<leader>zc", ":CopilotChat<CR>", mode = "n", desc = "Chat with Copilot" },
      { "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code" },
      { "<leader>zr", ":CopilotChatReview<CR>", mode = "v", desc = "Review Code" },
      { "<leader>zq", ":CopilotChatFix<CR>", mode = "v", desc = "Fix Code Issues" },
      { "<leader>zo", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize Code" },
      { "<leader>zd", ":CopilotChatDocs<CR>", mode = "v", desc = "Generate Docs" },
      { "<leader>zt", ":CopilotChatTests<CR>", mode = "v", desc = "Generate Tests" },
      { "<leader>zm", ":CopilotChatCommit<CR>", mode = "n", desc = "Generate Commit Message" },
      { "<leader>zs", ":CopilotChatCommit<CR>", mode = "v", desc = "Generate Commit for Selection" },
      {
        "<leader>zb",
        function()
          local input = vim.fn.input("Quick Chat (Buffer): ")
          if input ~= "" then
            require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
          end
        end,
        desc = "Quick chat about buffer",
        mode = "n",
      },
    },
  },
}
