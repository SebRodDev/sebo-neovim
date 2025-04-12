return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local function on_attach_change(bufnr)
        local api = require("nvim-tree.api")

        local function opts(desc)
          return {
            desc = "nvim-tree: " .. desc,
            buffer = bufnr,
            noremap = true,
            silent = true,
            nowait = true,
          }
        end

        api.config.mappings.default_on_attach(bufnr)
        vim.keymap.set("n", "<C-P>", function()
          api.tree.toggle({ file_path = true })
        end, opts("Toggle nvimtree"))
      end

      require("nvim-tree").setup({
        on_attach = on_attach_change,
      })
    end,
  },
}
