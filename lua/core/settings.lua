local set = vim.opt
local cmd = vim.cmd

set.swapfile = false
set.updatetime = 0
set.encoding = "utf-8"
set.fileencoding = "utf-8"
set.smartindent = true
set.smarttab = true
set.expandtab = true
set.autoindent = true
set.incsearch = true
set.shell = "/usr/bin/zsh"
set.shortmess:append "sI"
set.iskeyword:append("-")
set.mouse = "a"
set.pumheight = 15
set.ruler = true
set.conceallevel = 0
set.tabstop = 2
set.number = true
set.background = "dark"
set.virtualedit = "onemore"
set.ignorecase = true
set.smartcase = true
set.laststatus = 3
set.title = true
set.shiftwidth = 2
set.cmdheight = 1
set.numberwidth = 1
set.termguicolors = true
set.signcolumn = "yes"

set.hidden = true
set.timeoutlen = 500
set.lazyredraw = true
set.synmaxcol = 240

vim.g.netrw = 1
vim.g.netrwPlugin = 1
vim.g.netrwSettings = 1
vim.g.netrwFileHandlers = 1
vim.g.gzip = 1
vim.g.zip = 1
vim.g.zipPlugin = 1
vim.g.tar = 1
vim.g.tarPlugin = 1
vim.g.getscript = 1
vim.g.getscriptPlugin = 1
vim.g.vimball = 1
vim.g.vimballPlugin = 1
vim.g.logipat = 1
vim.g.rrhelper = 1
vim.g.spellfile = 1
vim.g.matchit = 1
vim.g.loaded_python3_provider = 1
vim.g.loaded_python_provider = 1
vim.g.loaded_node_provider = 1
vim.g.loaded_ruby_provider = 1
vim.g.loaded_perl_provider = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_gzip = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_rrhelper = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tutor = 1
vim.g.loaded_rplugin = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_netrwSettings = 1
vim.g.loaded_netrwFileHandlers = 1
vim.g.loaded_syntax = 1
vim.g.loaded_synmenu = 1
vim.g.loaded_optwin = 1
vim.g.loaded_compiler = 1
vim.g.loaded_bugreport = 1
vim.g.loaded_ftplugin = 1
vim.g.did_load_ftplugin = 1
vim.g.did_indent_on = 1

vim.api.nvim_exec([[
autocmd BufWritePre * let currPos = getpos(".")
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
autocmd BufWritePre * cal cursor(currPos[1], currPos[2])
]], false)

cmd([[
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev 1! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
]])

cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]
cmd [[silent! set updatetime=300 timeout timeoutlen=500 ttimeout ttimeoutlen=50 ttyfast lazyredraw]]
cmd [[set noshowmode]]
cmd [[syntax enable]]
cmd [[set t_Co=256]]
cmd [[hi CursorLine cterm=underline term=underline ctermbg=NONE guibg=NONE]]

cmd("colorscheme kanagawa")
