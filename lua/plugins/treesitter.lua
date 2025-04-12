return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      local S = {}

      S.setup = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
          -- parsers that I typically use
          ensure_installed = { "bash", "c", "lua", "markdown", "python", "vim", "java" },
          sync_install = false,
          auto_install = true,
          ignore_install = {},
          highlight = {
            enable = true,
            disable = function(lang, buf)
              local max_fsize = 100 * 1024 -- don't highlight files > 100kb
              local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
              if ok and stats and stats.size > max_fsize then
                return true
              end
            end,
            additional_vim_regex_highlighting = false,
          },
        })
      end

      S.setup() -- Call the setup function here if you want it to run immediately
      return S
    end,
  },
}
