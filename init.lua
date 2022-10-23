local core_modules = {
  'core/plugins',
  'core/autocmd',
  'core/settings',
  'core/keymaps',

  'configs/impatient',
  'configs/treesitter',
  'configs/alpha-nvim',
  'configs/servers',
  'configs/neoscroll',
  'configs/nvim-comment',
  'configs/completion',
  'configs/nvim-tree',
  'configs/toggleterm',
  'configs/lualine',
  'configs/lsplines',
}

for _, module in ipairs(core_modules) do
    local ok = pcall(require, module)
    if not ok then
      return
    end
end
