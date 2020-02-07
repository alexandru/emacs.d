(load-file "~/.emacs.d/settings/0-load-everything.el")

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
                  (quote
                   (index . item))
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
 '(org-agenda-files (quote ("~/Dropbox/Notes/org/")))
 '(package-selected-packages
   (quote
    (neotree mmm-mode company-quickhelp deft markdown-toc company-lsp lsp-mode lsp-ui rainbow-delimiters auto-package-update intero yasnippet-snippets yasnippet yaml-mode sbt-mode scala-mode projectile paredit org-plus-contrib markdown-mode js2-mode tide typescript-mode graphviz-dot-mode magit fsharp-mode emojify cider clojure-mode better-defaults exec-path-from-shell use-package)))
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
