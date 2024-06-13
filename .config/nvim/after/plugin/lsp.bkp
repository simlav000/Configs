local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Require lspconfig
local nvim_lsp = require('lspconfig')

-- Setup language servers for Python
nvim_lsp.anakin_language_server.setup({filetypes = {"python"}})

-- Setup language servers for C++
nvim_lsp.clangd.setup({
    cmd = {"clangd"},
    filetypes = {"C", "c", "cpp", "cxx", "objc", "objcpp"},
    root_dir = function(fname)
        return nvim_lsp.util.root_pattern("compile_flags.txt")(fname) or nvim_lsp.util.path.dirname(fname)
    end,
    on_attach = function(client, bufnr)
        -- Custom on_attach function if needed
        lsp_zero.on_attach(client, bufnr)
    end,
    init_options = {
        clangd = {
            -- Specify the C++ standard version
            command = { "clangd", "--compile-commands-dir=.", "-std=c++17" }
        }
    }
})
