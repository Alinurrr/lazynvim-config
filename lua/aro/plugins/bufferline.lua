return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "buffers",
      separator_style = "thin",
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,
      always_show_bufferline = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
      show_tab_indicators = false,
      persist_buffer_sort = true,
      sort_by = "insert_at_end",
      enforce_regular_tabs = false,
      hover = {
        enabled = true,
        delay = 200,
        reveal = { "close" },
      },
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "left",
          separator = true,
        },
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
          separator = true,
        },
      },
      custom_filter = function(buf_number, buf_numbers)
        if vim.bo[buf_number].filetype ~= "oil" then
          return true
        end
      end,
      get_element_icon = function(element)
        local icon, hl = require("nvim-web-devicons").get_icon_by_filetype(element.filetype, { default = false })
        return icon, hl
      end,
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)

    -- Keymaps for better buffer navigation
    local keymap = vim.keymap.set
    keymap("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { desc = "Go to next buffer" })
    keymap("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Go to previous buffer" })
    keymap("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })
    keymap("n", "<leader>br", "<cmd>BufferLineCloseRight<CR>", { desc = "Delete buffers to the right" })
    keymap("n", "<leader>bl", "<cmd>BufferLineCloseLeft<CR>", { desc = "Delete buffers to the left" })
    keymap("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", { desc = "Delete other buffers" })
    keymap("n", "<leader>bp", "<cmd>BufferLineTogglePin<CR>", { desc = "Toggle pin" })
    keymap("n", "<leader>bP", "<cmd>BufferLineGroupClose ungrouped<CR>", { desc = "Delete non-pinned buffers" })
    keymap("n", "<leader>bb", "<cmd>BufferLinePick<CR>", { desc = "Pick buffer" })
    keymap("n", "<leader>bse", "<cmd>BufferLineSortByExtension<CR>", { desc = "Sort by extension" })
    keymap("n", "<leader>bsd", "<cmd>BufferLineSortByDirectory<CR>", { desc = "Sort by directory" })
    keymap("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
    keymap("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
    keymap("n", "[b", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
    keymap("n", "]b", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" })
    keymap("n", "[B", "<cmd>BufferLineMovePrev<CR>", { desc = "Move buffer prev" })
    keymap("n", "]B", "<cmd>BufferLineMoveNext<CR>", { desc = "Move buffer next" })
  end,
}
