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

    --[[
    -- Make NERDTree open automatically on startup
    vim.api.nvim_create_autocmd({"VimEnter"}, {
        command = "NERDTree"
    })

    -- Place cursor in the main code window instead of the NERDTree
    -- window
    vim.api.nvim_create_autocmd({"VimEnter"}, {
        command = "wincmd p"
    })
    --]]

    -- Close vim if the only window left is NERDTree
    vim.api.nvim_create_autocmd({"BufEnter"}, {
        command =  [[ if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif ]]
    })
end
