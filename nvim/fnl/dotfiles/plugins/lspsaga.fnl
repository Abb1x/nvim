(module dotfiles.plugins.lspsaga
  {require {saga :lspsaga util :dotfiles.util}})

(saga.init_lsp_saga {
                     :border_style "round"
                     })

(util.nnoremap :K "Lspsaga hover_doc")
