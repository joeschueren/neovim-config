vim.o.termguicolors = true
vim.cmd [[ colorscheme gruvbox ]]

if packer_bootstrap then
    require('packer').sync()
end
