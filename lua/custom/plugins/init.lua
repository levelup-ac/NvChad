-- custom/plugins/init.lua has to return a table

-- THe plugin name is github user or organization name/reponame

return {
   ["ray-x/go.nvim"] = {
      enable = true,
      ft = "go",
      config = function()
         require("go").setup {
         -- goimport = 'goimports', -- 'gopls'
         filstruct = "gopls",
         log_path = vim.fn.expand "$HOME" .. "/tmp/gonvim.log",
         lsp_codelens = false, -- use navigator
         dap_debug = true,
         goimport = "gopls",
         dap_debug_vt = "true",
         dap_debug_gui = true,
         test_runner = "go", -- richgo, go test, richgo, dlv, ginkgo
         -- run_in_floaterm = true, -- set to true to run in float window.
         lsp_document_formatting = true,
         -- lsp_on_attach = require("navigator.lspclient.attach").on_attach,
         -- lsp_cfg = true,
         }
         -- vim.cmd "augroup go"
         -- vim.cmd "autocmd!"
         -- vim.cmd "autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4"
         -- vim.cmd "augroup END"
      end,
   },

   ["ray-x/guihua.lua"] = {},

}
