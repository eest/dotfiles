vim.opt.history = 1000
vim.opt.background = "dark"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmatch = true
vim.opt.mat = 5
vim.opt.hlsearch = true
vim.opt.cindent = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- Some servers have issues with backup files, see #649.
vim.opt.writebackup = false
-- Having longer updatetime (default is 4000 ms = 4 s) leads to
-- noticeable delays and poor user experience.
vim.opt.updatetime=300
vim.opt.listchars = {
    tab = '| ',
    trail = '.',
    extends = '>',
    precedes = '<',
    eol = '$'
}
vim.g.mapleader = ' '

-- Always show the signcolumn, otherwise it would shift the text each
-- time diagnostics appear/become resolved.
-- Recently vim can merge signcolumn and number column into one
if vim.fn.has('nvim-0.5.0') == 1 or vim.fn.has('patch-8.1.1564') == 1 then
    vim.opt.signcolumn = "number"
else
    vim.opt.signcolumn = "yes"
end

