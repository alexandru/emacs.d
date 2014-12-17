(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

;(exec-path-from-shell-initialize)

(load-file "~/.emacs.d/settings/customizations.el")
(load-file "~/.emacs.d/settings/color-theme.el")
(load-file "~/.emacs.d/settings/yasnippets.el")
(load-file "~/.emacs.d/settings/clojure-mode.el")






