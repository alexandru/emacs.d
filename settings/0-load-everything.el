;;; 0-load-everything.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; Order shouldn't matter if `use-package' is configured correctly,
;; but I didn't manage to convert everything to it.
;;

;;; Code:

(add-to-list 'load-path "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/settings/")

(require '1-functions)
(require '2-init-package-manager)
(require '3-init-settings)
(require '4-global-keymap)

(require 'load-company)
(require 'load-deft)
(require 'load-epa)
(require 'load-fira-code)
(require 'load-flycheck)
(require 'load-git)
(require 'load-graphviz)
(require 'load-haskell)
(require 'load-helm)
(require 'load-ido)
(require 'load-javascript)
(require 'load-lsp-mode)
(require 'load-markdown)
(require 'load-mmm)
(require 'load-org)
(require 'load-paredit)
(require 'load-projectile)
(require 'load-rainbow-delimiters)
(require 'load-rust)
(require 'load-scala)
(require 'load-which-key)
(require 'load-yaml)
(require 'load-yasnippets)

(provide '0-load-everything)
;;; 0-load-everything.el ends here
