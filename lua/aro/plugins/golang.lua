return {
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup({
        goimport = "gopls",
        gofmt = "gofumpt",
        max_line_len = 120,
        tag_transform = false,
        test_dir = "",
        comment_placeholder = "   ",
        lsp_cfg = false, -- false: use your own lspconfig
        lsp_gofumpt = true,
        lsp_on_attach = false, -- use on_attach from lspconfig
        dap_debug = true,
        dap_debug_keymap = true,
        dap_debug_gui = true,
        dap_debug_vt = true,
      })

      -- Run gofmt + goimport on save
      local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = "*.go",
        callback = function()
          require("go.format").goimport()
        end,
        group = format_sync_grp,
      })
    end,
    event = { "CmdlineEnter" },
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
    end,
  },
}