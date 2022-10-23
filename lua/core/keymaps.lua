-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-----------------
-- Normal Mode --
-----------------
-- Mappings for splits
keymap("n", "<A-h>", "<C-w>h", {})
keymap("n", "<A-j>", "<C-w>j", {})
keymap("n", "<A-k>", "<C-w>k", {})
keymap("n", "<A-l>", "<C-w>l", {})

keymap ("n", "<A-m>", ":ToggleCmp<cr>", {})

-- resize current buffer by +/- 2
keymap ("n", "<C-h>", ":vertical resize -2<cr>", {})
keymap ("n", "<C-j>", ":resize +2<cr>", {})
keymap ("n", "<C-k>", ":resize -2<cr>", {})
keymap ("n", "<C-l>", ":vertical resize +2<cr>", {})

-- Mappings for scrolling up And down
-- keymap ("n", "<A-k>", "<C-u>k", {})
-- keymap ("n", "<A-j>", "<C-d>j", {})

-- TAB SHIFT-TAB will go back
keymap("n", "<TAB>", ":bnext<CR>", {})
keymap("n", "<S-TAB>", ":bprevious<CR>", {})

-- Alternate way to save and quit nvim
keymap ("n", "<A-w>", ":w<CR>", {})
keymap ("n", "<A-q>", ":q<CR>", {})
keymap ("n", "<A-1>", ":q!<CR>",{})

-- Nvim Comment
keymap("n", "<leader>c", ":CommentToggle<CR>", {})       -- Comment One Line
keymap("x", "<leader>c", ":'<,'>CommentToggle<CR>", {})  -- Comment Multiple Lines In Visual Mode
keymap("n", "<leader>p", "vip:CommentToggle<CR>", {})    -- Comment A Paragraph

-- Better tabbing
keymap ("n", "<", "<gv", {})
keymap ("n", ">", ">gv", {})

-- Don't accidently create macros when trying to quit
keymap ('n', 'Q', 'q', {})
keymap ('n', 'q', '<nop>', {})

-- Toggle Alpha Dashboard
keymap ('n', "<leader>a", ":set laststatus=3<CR> | :Alpha<CR>", {})

-- Toggle NvimTree
keymap ("n", "<leader>n", ":NvimTreeToggle<CR>", {})

keymap ("n", "<leader>y", '"+y<CR>', {})
keymap ('n', '<leader>p', '"+p', {})

-- Yank entire line
keymap ("n", "yie", ":<C-u>%y<CR>", {})

-- Packer Update
keymap ("n", "<leader>u", ":PackerSync<CR>", {})

-- Packer Install
keymap ("n", "<leader>i", ":PackerInstall<CR>", {})


-- Auto Pairs
vim.cmd([[
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0
inoremap {;<CR> {<CR>};<ESC>0
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap " ""<left>
inoremap ' ''<left>
]])
