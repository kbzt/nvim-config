local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

-- See: https://github.com/nvim-treesitter/nvim-treesitter#quickstart
nvim_treesitter.setup {
  ensure_installed = {
    "bash",
    "c",
    "cmake",
    "cpp",
    "css",
    "dockerfile",
    "html",
    "java",
    "javascript",
    "json",
    "latex",
    "lua",
    "make",
    "markdown",
    "python",
    "rust",
    "svelte",
    "toml",
    "yaml"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
}
