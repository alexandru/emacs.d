(use-package rust-mode
  :ensure t
  :after lsp-mode
  :config
  (add-hook 'rust-mode-hook #'lsp-deferred))
