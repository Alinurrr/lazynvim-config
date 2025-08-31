return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    vim.g.lazygit_floating_window_winblend = 0
    vim.g.lazygit_floating_window_scaling_factor = 0.9
    vim.g.lazygit_floating_window_border_chars = {'╭','─', '╮', '│', '╯','─', '╰', '│'}
    vim.g.lazygit_floating_window_use_plenary = 0
    vim.g.lazygit_use_neovim_remote = 1
    vim.g.lazygit_use_custom_config_file_path = 0

    -- Fix ESC key handling in lazygit
    vim.api.nvim_create_autocmd("TermOpen", {
      pattern = "*lazygit*",
      callback = function()
        vim.keymap.set("t", "<Esc>", "<C-\\><C-n>:q<CR>", { buffer = true, silent = true })
        vim.keymap.set("t", "<C-c>", "<C-\\><C-n>:q<CR>", { buffer = true, silent = true })
      end,
    })
  end,
  keys = {
    { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    { "<leader>lG", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit current file" },
    { "<leader>lc", "<cmd>LazyGitFilter<cr>", desc = "LazyGit commits" },
    { "<leader>lf", "<cmd>LazyGitFilterCurrentFile<cr>", desc = "LazyGit file history" },
  },
}
