return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      "                                     ",
      "       █████╗ ██████╗  ██████╗       ",
      "      ██╔══██╗██╔══██╗██╔═══██╗      ",
      "      ███████║██████╔╝██║   ██║      ",
      "      ██╔══██║██╔══██╗██║   ██║      ",
      "      ██║  ██║██║  ██║╚██████╔╝      ",
      "      ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝       ",
      "                                     ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", "> New File", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", "> Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "> Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "> Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "> Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "> Quit NVIM", "<cmd>qa<CR>"),
    }

    -- Configure layout for perfect centering
    local function get_padding()
      local win_height = vim.api.nvim_win_get_height(0)
      local header_height = #dashboard.section.header.val
      local buttons_height = #dashboard.section.buttons.val
      local footer_height = 2 -- Approximate footer height

      local total_content_height = header_height + buttons_height + footer_height + 4 -- 4 for spacing
      local padding = math.max(0, math.floor((win_height - total_content_height) / 2))

      return padding
    end

    -- Set dynamic padding for vertical centering
    dashboard.config.layout = {
      { type = "padding", val = get_padding },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
      dashboard.section.footer,
    }

    -- Configure opts for horizontal centering
    dashboard.config.opts = {
      position = "center",
      margin = 5,
    }

    -- Send config to alpha
    alpha.setup(dashboard.config)

    -- Disable folding on alpha buffer and recalculate padding on resize
    vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
    ]])
    
    vim.api.nvim_create_autocmd("VimResized", {
      callback = function()
        if vim.bo.filetype == 'alpha' then
          pcall(require('alpha').redraw)
        end
      end,
    })
  end,
}
