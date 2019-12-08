
(use-package haskell-mode
  :ensure t
  :init
  (add-hook 'haskell-mode-hook 'haskell-indentation-mode)
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  ;; OR:
  ;; (add-hook 'haskell-mode-hook 'flymake-mode)
  (add-hook 'haskell-mode-hook (lambda () (local-set-key "\C-c\C-h" 'haskell-hoogle)))
  )

;; (use-package intero
;;   :ensure t
;;   :after haskell-mode
;;   :commands 'intero-mode
;;   :init
;;   (add-hook 'haskell-mode-hook 'intero-mode)
;;   (with-eval-after-load 'intero
;;     (flycheck-add-next-checker 'intero '(warning . haskell-hlint)))
;;   )

;; (use-package lsp-mode
;;   :ensure t
;;   :hook (haskell-mode . lsp)
;;   :commands lsp)

;; (use-package lsp-ui
;;   :ensure t
;;   :commands lsp-ui-mode)

;; (use-package lsp-haskell
;;  :ensure t
;;  :config
;;  (setq lsp-haskell-process-path-hie "ghcide")
;;  (setq lsp-haskell-process-args-hie '())
;;  ;; Comment/uncomment this line to see interactions between lsp client/server.
;;  ;;(setq lsp-log-io t)
;; )

