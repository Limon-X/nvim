vim.lsp.config('ardunino', {
    {
        textDocument = {
            semanticTokens = vim.NIL
        },
        workspace = {
          semanticTokens = vim.NIL
        },
    },
    cmd = { "arduino-language-server" },
    filetypes = {'arduiono'},
})
