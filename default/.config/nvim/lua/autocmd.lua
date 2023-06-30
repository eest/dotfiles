-- autocmd requires at least neovim 0.7.0
if vim.fn.has('nvim-0.7.0') == 1 then
    vim.api.nvim_create_autocmd({"VimEnter"}, {
        command = [[:call matchadd('Error', '\s\+$', -1) | call matchadd('Error', '\%u00A0')]]
    })

    vim.api.nvim_create_autocmd(
        "FileType",
        { pattern = {"mail"} , command = "set nocindent" }
    )

    vim.api.nvim_create_autocmd(
        "FileType",
        { pattern = {"mail"} , command = "set textwidth=72" }
    )

    vim.api.nvim_create_autocmd(
        "FileType",
        { pattern = {"go"} , command = "set noexpandtab" }
    )
end
