
(use-package haskell-mode
  :ensure t
  :init
  (add-hook 'haskell-mode-hook 'haskell-indentation-mode)
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  ;; OR:
  ;; (add-hook 'haskell-mode-hook 'flymake-mode)
  (add-hook 'haskell-mode-hook (lambda () (local-set-key "\C-c\C-h" 'haskell-hoogle)))
  )

(use-package intero
  :ensure t
  :after haskell-mode
  :commands 'intero-mode
  :init
  (add-hook 'haskell-mode-hook 'intero-mode)
  (with-eval-after-load 'intero
    (flycheck-add-next-checker 'intero '(warning . haskell-hlint)))
  )
