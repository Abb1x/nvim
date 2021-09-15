(module dotfiles.core
  {autoload {nvim aniseed.nvim}})

;; Set general settings
(set nvim.o.termguicolors true)
(set nvim.o.number true)
(set nvim.o.syntax "on")
(set nvim.o.tabstop 4)

(nvim.ex.colorscheme :onedark)
