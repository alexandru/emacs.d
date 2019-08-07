
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
 '(package-selected-packages
   (quote
    (intero yasnippet-snippets yasnippet yaml-mode sbt-mode scala-mode projectile paredit org-plus-contrib markdown-mode js2-mode tide typescript-mode graphviz-dot-mode magit fsharp-mode emojify cider clojure-mode better-defaults color-theme exec-path-from-shell use-package)))
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
