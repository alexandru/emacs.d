
;;;
;;; Configuration for the package manager
;;;

(require 'package)
(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("ORG Mode"     . "https://orgmode.org/elpa/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("GNU ELPA"     . 10)
        ("ORG Mode"     . 9)
        ("MELPA Stable" . 5)
        ("MELPA"        . 0)))
(package-initialize)

(when (not package-archive-contents) (package-refresh-contents))
(unless (package-installed-p 'use-package) (package-install 'use-package))
(require 'use-package)

;; Keeps packages up-to-date

(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

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
 '(custom-safe-themes
   (quote
    ("4c8372c68b3eab14516b6ab8233de2f9e0ecac01aaa859e547f902d27310c0c3" default)))
 '(haskell-hoogle-url "https://www.stackage.org/lts/hoogle?q=%s")
 '(js-indent-level 2)
 '(package-selected-packages
   (quote
    (auto-package-update intero yasnippet-snippets yasnippet yaml-mode sbt-mode scala-mode projectile paredit org-plus-contrib markdown-mode js2-mode tide typescript-mode graphviz-dot-mode magit fsharp-mode emojify cider clojure-mode better-defaults exec-path-from-shell use-package)))
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
