return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      -- Show hidden files by default
      filtered_items = {
        visible = true, -- This makes hidden files visible
        show_hidden_count = true,
        hide_dotfiles = false, -- Don't hide dotfiles
        hide_gitignored = false, -- Don't hide gitignored files
        hide_by_name = {
          -- Still hide these specific items to reduce noise
          "node_modules",
          "__pycache__",
          ".pytest_cache",
          ".git",
          ".DS_Store",
          "thumbs.db",
        },
        hide_by_pattern = {
          -- Hide patterns that are typically noise
          "*.pyc",
        },
        never_show = {},
      },
      -- Follow symlinks
      follow_current_file = {
        enabled = true,
      },
      -- Show file details
      use_libuv_file_watcher = true,
    },
    window = {
      -- Make the window a bit wider to accommodate longer filenames
      width = 35,
    },
  },
}