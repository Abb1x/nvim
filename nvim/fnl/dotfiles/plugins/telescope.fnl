(module dotfiles.plugins.telescope
  {autoload {util dotfiles.util}})


(util.nnoremap :ff "Telescope find_files")
(util.nnoremap :fg "Telescope git_files")
(util.nnoremap :fb "Telescope buffer")
(util.nnoremap :fm "Telescope man_pages")
