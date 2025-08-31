vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- save file
keymap.set("n", "<leader>ww", "<cmd>w<CR>", { desc = "Save file" }) -- save file
keymap.set("i", "<C-s>", "<cmd>w<CR>", { desc = "Save file" }) -- save file in insert mode

-- tag/bracket navigation and selection
keymap.set("n", "%", "<cmd>normal! %<CR>", { desc = "Jump to matching tag/bracket" }) -- jump to matching bracket/tag
keymap.set("v", "%", "<cmd>normal! %<CR>", { desc = "Jump to matching tag/bracket in visual mode" }) -- jump to matching bracket/tag in visual
keymap.set("n", "vat", "vat", { desc = "Select around tag (including tags)" }) -- select around tag
keymap.set("n", "vit", "vit", { desc = "Select inside tag (content only)" }) -- select inside tag
keymap.set("n", "va{", "va{", { desc = "Select around curly braces" }) -- select around curly braces
keymap.set("n", "vi{", "vi{", { desc = "Select inside curly braces" }) -- select inside curly braces
keymap.set("n", "va(", "va(", { desc = "Select around parentheses" }) -- select around parentheses
keymap.set("n", "vi(", "vi(", { desc = "Select inside parentheses" }) -- select inside parentheses
keymap.set("n", "va[", "va[", { desc = "Select around square brackets" }) -- select around square brackets
keymap.set("n", "vi[", "vi[", { desc = "Select inside square brackets" }) -- select inside square brackets

-- code folding
keymap.set("n", "zc", "zc", { desc = "Close/collapse fold" }) -- close fold
keymap.set("n", "zo", "zo", { desc = "Open/expand fold" }) -- open fold
keymap.set("n", "za", "za", { desc = "Toggle fold" }) -- toggle fold
keymap.set("n", "zC", "zC", { desc = "Close all nested folds" }) -- close all nested folds
keymap.set("n", "zO", "zO", { desc = "Open all nested folds" }) -- open all nested folds
keymap.set("n", "zM", "zM", { desc = "Close all folds" }) -- close all folds in buffer
keymap.set("n", "zR", "zR", { desc = "Open all folds" }) -- open all folds in buffer
