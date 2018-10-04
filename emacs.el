(add-to-list 'load-path "~/.emacs.d/elpa/")

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Loads PATH from the environment

(exec-path-from-shell-initialize)

;; Lists all configuration files
(load-file "~/.emacs.d/settings/customizations.el")
(load-file "~/.emacs.d/settings/graphics.el")
(load-file "~/.emacs.d/settings/ido.el")
(load-file "~/.emacs.d/settings/fira-code.el")
(load-file "~/.emacs.d/settings/emoji.el")
(load-file "~/.emacs.d/settings/projectile.el")
(load-file "~/.emacs.d/settings/paredit.el")
(load-file "~/.emacs.d/settings/yasnippets.el")
(load-file "~/.emacs.d/settings/clojure-mode.el")
(load-file "~/.emacs.d/settings/scala-mode.el")
(load-file "~/.emacs.d/settings/fsharp-mode.el")
(load-file "~/.emacs.d/settings/haskell.el")
;;(load-file "~/.emacs.d/settings/ocaml.el")
(load-file "~/.emacs.d/settings/yaml-mode.el")
(load-file "~/.emacs.d/settings/markdown.el")
(load-file "~/.emacs.d/settings/javascript.el")
(load-file "~/.emacs.d/settings/graphviz.el")
(load-file "~/.emacs.d/settings/keymap.el")

;; Starting server?
;; (load "server")
;; (unless (server-running-p) (server-start))

