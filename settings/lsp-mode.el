(use-package lsp-mode
  :ensure t
  :hook (rust-mode . lsp)
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :config
  (setq lsp-ui-doc-enable nil
        lsp-ui-sideline-enable nil)
  )
