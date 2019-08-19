
;;;
;;; Configuration for the package manager
;;;

(require 'package)
(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "http://stable.melpa.org/packages/"))
 package-archive-priorities '(("melpa-stable" . 1)))

(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))
(unless (package-installed-p 'use-package) (package-install 'use-package))
(require 'use-package)

;;;
;;; Loads everything
;;;

(add-to-list 'load-path "~/.emacs.d/elpa/")
(load-file "~/.emacs.d/emacs.el")

;;;
;;; Emacs configuration written by emacs itself:
;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js-indent-level 2)
 '(org-agenda-files
   (quote
    ("~/Dropbox/Notes/org/")))
 '(package-selected-packages
   (quote
    (intero camcorder-record org-plus-contrib org-mode yasnippet-snippets etags-table magit color-theme use-package sbt-mode graphviz-dot-mode dot-mode js2-mode tide emojify markdown-mode yaml-mode haskell-mode fsharp-mode ensime scala-mode cider clojure-mode better-defaults yasnippet paredit projectile exec-path-from-shell)))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(typescript-indent-level 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
