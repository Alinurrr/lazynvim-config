# Aro's Neovim Configuration

A modern, feature-rich Neovim configuration built for productivity and efficiency. This setup includes LSP support, fuzzy finding, git integration, and many quality-of-life improvements.

Note: This configuration may still be updated in the future.

## ✨ Features

### 🚀 Performance & Navigation
- **Lazy.nvim** - Lightning-fast plugin management with lazy loading
- **Telescope** - Powerful fuzzy finder for files, text, and more
- **Flash.nvim** - Enhanced cursor movement and text navigation
- **Neoscroll** - Smooth scrolling experience
- **Vim-tmux-navigator** - Seamless navigation between Vim and tmux panes

### 💻 Development Experience
- **LSP Support** - Full Language Server Protocol integration via Mason
- **Autocompletion** - Intelligent code completion with nvim-cmp
- **Treesitter** - Advanced syntax highlighting and text objects
- **Formatting** - Automatic code formatting with Conform.nvim
- **Linting** - Code linting with nvim-lint
- **DAP** - Debug Adapter Protocol for Go debugging

### 🎨 UI & Visual Enhancements
- **Tokyo Night** - Beautiful dark colorscheme
- **Lualine** - Elegant statusline
- **Bufferline** - Tab-like buffer navigation
- **Alpha-nvim** - Customizable start screen
- **Indent-blankline** - Visual indentation guides
- **Gitsigns** - Git integration with inline blame and diff

### 🛠️ Productivity Tools
- **Nvim-tree** - File explorer sidebar
- **Toggleterm** - Integrated terminal management
- **Which-key** - Interactive keybinding helper
- **Auto-session** - Session management
- **Nvim-surround** - Efficient text surrounding operations
- **Comment.nvim** - Easy code commenting
- **Todo-comments** - Highlight and search TODO comments

## 📁 Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lazy-lock.json          # Plugin version lock file
├── .prettierrc             # Prettier configuration
├── .stylua.toml           # Stylua configuration
└── lua/aro/
    ├── core/
    │   ├── init.lua        # Core module loader
    │   ├── options.lua     # Vim options and settings
    │   └── keymaps.lua     # Global keybindings
    ├── lazy.lua            # Lazy.nvim setup
    └── plugins/
        ├── init.lua        # Basic plugins
        ├── lsp/            # LSP configuration
        │   ├── lspconfig.lua
        │   └── mason.lua
        └── [plugin-name].lua # Individual plugin configs
```

## 🔧 Prerequisites

Before installing, ensure you have:

1. **Neovim 0.9+** - Check with `nvim --version`
2. **Git** - For cloning repositories
3. **Node.js & npm** - For LSP servers and formatters
4. **Python 3** - For Python-based tools
5. **Ripgrep** - For telescope live grep: `brew install ripgrep`
6. **A Nerd Font** - For icons (e.g., JetBrains Mono Nerd Font)

### macOS Installation
```bash
# Install Neovim
brew install neovim

# Install ripgrep
brew install ripgrep

# Install a Nerd Font
brew tap homebrew/cask-fonts
brew install font-jetbrains-mono-nerd-font
```

### Linux (Ubuntu/Debian)
```bash
# Install Neovim
sudo apt update
sudo apt install neovim

# Install ripgrep
sudo apt install ripgrep

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs
```

## 🚀 Installation

1. **Backup existing config** (if you have one):
```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

2. **Clone this configuration**:
```bash
git clone https://github.com/your-username/nvim-config ~/.config/nvim
```

3. **Start Neovim**:
```bash
nvim
```

4. **Wait for plugin installation**:
   - Lazy.nvim will automatically install all plugins
   - LSP servers will be installed via Mason
   - This may take a few minutes on first run

## 🎯 Key Bindings

### Global Keymaps
| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `jj` | Exit insert mode |
| `<leader>nh` | Clear search highlights |
| `<leader>+/-` | Increment/decrement number |

### Window Management
| Key | Action |
|-----|--------|
| `<leader>sv` | Split window vertically |
| `<leader>sh` | Split window horizontally |
| `<leader>se` | Make splits equal size |
| `<leader>sx` | Close current split |

### Tab Management
| Key | Action |
|-----|--------|
| `<leader>to` | Open new tab |
| `<leader>tx` | Close current tab |
| `<leader>tn/tp` | Next/previous tab |

### File Operations
| Key | Action |
|-----|--------|
| `<leader>ww` | Save file |
| `<Ctrl-s>` | Save file (insert mode) |

### Telescope (Fuzzy Finder)
| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fr` | Find recent files |
| `<leader>fs` | Live grep |
| `<leader>fc` | Find word under cursor |
| `<leader>ft` | Find TODOs |

### Code Folding
| Key | Action |
|-----|--------|
| `zo/zc` | Open/close fold |
| `za` | Toggle fold |
| `zR/zM` | Open/close all folds |

## 🔌 Plugins Overview

### Core Plugins
- **lazy.nvim** - Plugin manager
- **plenary.nvim** - Lua utility functions
- **nvim-web-devicons** - File icons

### LSP & Completion
- **nvim-lspconfig** - LSP client configurations
- **mason.nvim** - LSP server installer
- **nvim-cmp** - Completion engine
- **LuaSnip** - Snippet engine

### UI Enhancement
- **tokyonight.nvim** - Colorscheme
- **lualine.nvim** - Statusline
- **alpha-nvim** - Start screen
- **noice.nvim** - Enhanced UI for messages

### Navigation & Search
- **telescope.nvim** - Fuzzy finder
- **nvim-tree.lua** - File explorer
- **flash.nvim** - Enhanced navigation

### Git Integration
- **gitsigns.nvim** - Git signs and blame
- **lazygit.nvim** - Lazygit integration

### Development Tools
- **nvim-treesitter** - Syntax highlighting
- **conform.nvim** - Code formatting
- **nvim-lint** - Linting
- **copilot.vim** - GitHub Copilot

## ⚙️ Customization

### Adding New Plugins
1. Create a new file in `lua/aro/plugins/[plugin-name].lua`
2. Follow the lazy.nvim plugin specification
3. Restart Neovim - plugins will auto-install

### Modifying Settings
- **Options**: Edit `lua/aro/core/options.lua`
- **Keymaps**: Edit `lua/aro/core/keymaps.lua`
- **Plugin configs**: Edit respective files in `lua/aro/plugins/`

### LSP Configuration
- LSP servers are managed in `lua/aro/plugins/lsp/mason.lua`
- LSP settings in `lua/aro/plugins/lsp/lspconfig.lua`

## 🐛 Troubleshooting

### Plugin Issues
```bash
# Check plugin status
:Lazy

# Update plugins
:Lazy update

# Clean unused plugins
:Lazy clean
```

### LSP Issues
```bash
# Check LSP status
:LspInfo

# Install/update LSP servers
:Mason
```

### Performance Issues
```bash
# Check startup time
nvim --startuptime startup.log

# Profile plugins
:Lazy profile
```

## 📚 Learning Resources

- [Neovim Documentation](https://neovim.io/doc/)
- [Lazy.nvim Documentation](https://github.com/folke/lazy.nvim)
- [Telescope Documentation](https://github.com/nvim-telescope/telescope.nvim)
- [LSP Configuration Guide](https://github.com/neovim/nvim-lspconfig)

## 🤝 Contributing

Feel free to fork this configuration and make it your own! If you find bugs or have improvements, please open an issue or pull request.

## 📄 License

This configuration is open source and available under the [MIT License](LICENSE).

---

**Happy coding! 🚀**
