return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      -- Show hidden files in telescope
      hidden = true,
      -- Follow symbolic links
      follow = true,
      -- Include hidden files and directories
      file_ignore_patterns = {
        "node_modules/.*",
        ".git/.*",
        "__pycache__/.*",
        ".pytest_cache/.*",
        "%.pyc$",
        ".venv/.*",
        "venv/.*", 
        "env/.*",
        "dist/.*",
        "build/.*",
        ".next/.*",
        ".nuxt/.*",
        "target/.*",
        ".cache/.*",
        "%.o$",
        "%.a$",
        "%.out$",
        "%.class$",
        "%.pdf$",
        "%.mkv$",
        "%.mp4$",
        "%.zip$"
      },
    },
    pickers = {
      find_files = {
        -- Show hidden files in find_files
        hidden = true,
        -- Use fd if available for better performance with hidden files
        -- Add --no-ignore to show gitignored files but exclude common build/cache dirs
        find_command = { 
          "fd", "--type", "f", "--hidden", "--follow", "--no-ignore",
          "--exclude", ".git",
          "--exclude", "node_modules", 
          "--exclude", "__pycache__",
          "--exclude", ".pytest_cache",
          "--exclude", "*.pyc",
          "--exclude", ".venv",
          "--exclude", "venv",
          "--exclude", "env",
          "--exclude", "dist",
          "--exclude", "build",
          "--exclude", ".next",
          "--exclude", ".nuxt",
          "--exclude", "target",
          "--exclude", ".cache"
        },
      },
      live_grep = {
        -- Include hidden files and gitignored files in grep search
        additional_args = function(opts)
          return {"--hidden", "--no-ignore"}
        end
      },
    },
  },
}