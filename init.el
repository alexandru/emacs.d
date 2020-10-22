(load-file "~/.emacs.d/settings/0-load-everything.el")

;;;
;;; Emacs configuration written by emacs itself:
;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(css-indent-offset 2)
 '(custom-safe-themes
   '("b48599e24e6db1ea612061252e71abc2c05c05ac4b6ad532ad99ee085c7961a7" "11e5e95bd3964c7eda94d141e85ad08776fbdac15c99094f14a0531f31a156da" "b8c5adfc0230bd8e8d73450c2cd4044ad7ba1d24458e37b6dec65607fc392980" "4c8372c68b3eab14516b6ab8233de2f9e0ecac01aaa859e547f902d27310c0c3" default))
 '(haskell-hoogle-url "https://www.stackage.org/lts/hoogle?q=%s")
 '(intero-stack-executable "/usr/local/bin/stack")
 '(js-indent-level 2)
 '(markdown-toc-user-toc-structure-manipulation-fn
   (lambda
     (toc-structure)
     toc-structure
     (mapcar
      (lambda
        (l)
        (if
            (listp l)
            (let
                ((index
                  (car l))
                 (item
                  (cdr l)))
              (if
                  (integerp index)
                  '(index . item)
                l))
          l))
      (seq-filter
       (lambda
         (l)
         (let
             ((index
               (car l)))
           (<= 1 index)))
       (seq-filter
        (lambda
          (l)
          (let
              ((index
                (car l)))
            (<= 1 index)))
        toc-structure)))))
 '(org-agenda-files '("~/Dropbox/Notes/org/"))
 '(package-selected-packages
   '(langtool helm-config helm color-theme-clar aquamacs-theme dracula-theme ripgrep ag auto-compile all-the-icons treemacs-magit treemacs-icons-dired dante treemacs-projectile treemacs toc-org powerline xclip x-clip neotree mmm-mode company-quickhelp deft markdown-toc company-lsp lsp-mode lsp-ui rainbow-delimiters auto-package-update intero yasnippet-snippets yasnippet yaml-mode sbt-mode scala-mode projectile paredit org-plus-contrib markdown-mode js2-mode tide typescript-mode graphviz-dot-mode magit fsharp-mode emojify cider clojure-mode better-defaults exec-path-from-shell use-package))
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
