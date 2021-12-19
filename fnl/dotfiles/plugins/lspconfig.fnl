(module dotfiles.plugins.lspconfig
  {autoload {util dotfiles.util
             nvim aniseed.nvim}})

 (defn- map [from to]
  (util.nnoremap from to))

(local completion (require :completion))
(local signature (require :lsp_signature))

(local signature_cfg {
                      :bind true
                      :hint_enable false})

(defn on_attach [client bufnr]
  (completion.on_attach client bufnr)
  (signature.on_attach signature_cfg bufnr)

  (when client.resolved_capabilities.document_formatting
    (nvim.command "augroup Format"))
    (nvim.command "autocmd! * <buffer>")
    (nvim.command "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()")
    (nvim.command "augroup END"))

(let [lsp (require :lspconfig)]
  (when lsp
    (lsp.clangd.setup {:on_attach on_attach})
    (lsp.dartls.setup {:on_attach on_attach})
    (lsp.hls.setup {:on_attach on_attach})
    (lsp.pylsp.setup {:on_attach on_attach})
    (map :zx "lua vim.lsp.buf.formatting()")))
