return {
  -- Git blame virtual text plugin
  {
    "f-person/git-blame.nvim",
    event = "BufReadPre",
    opts = {
      -- Enable git blame by default
      enabled = true,
      -- Show blame info as virtual text
      message_template = " <summary> • <date> • <author>",
      date_format = "%m-%d-%Y %H:%M:%S",
      -- Don't show blame for ignored filetypes
      ignored_filetypes = {
        "gitcommit",
        "gitrebase",
        "qf",
        "help",
      },
      -- Use virtual text instead of popup
      message_when_not_committed = "  Not Committed Yet",
    },
    config = function(_, opts)
      require("gitblame").setup(opts)
      
      -- Add keymaps
      vim.keymap.set("n", "<leader>gb", "<cmd>GitBlameToggle<cr>", { desc = "Toggle Git Blame" })
      vim.keymap.set("n", "<leader>gB", "<cmd>GitBlameOpenCommitURL<cr>", { desc = "Open Commit URL" })
      vim.keymap.set("n", "<leader>gc", "<cmd>GitBlameCopySHA<cr>", { desc = "Copy Commit SHA" })
    end,
  },
  
  -- Enhanced gitsigns configuration
  {
    "lewis6991/gitsigns.nvim", 
    opts = function(_, opts)
      opts.current_line_blame = true
      opts.current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
        delay = 300,
        ignore_whitespace = false,
      }
      opts.current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>"
      return opts
    end,
  },
}