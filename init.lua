vim.opt.colorcolumn = "80"

vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.spelllang = "en_us,cjk"
vim.opt.spellsuggest = "best,5"
vim.opt.spell = true

local yankGrp = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})

-- disable spellcheck in terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
  command = "setlocal nospell"
})

if vim.g.neovide then
  vim.opt.guifont = "FiraCode Edited Nerd Font:h13"
end

