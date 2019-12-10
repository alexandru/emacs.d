;; LSP (Language Server Extension)
;; https://code.visualstudio.com/api/language-extensions/language-server-extension-guide

(use-package lsp-mode
  :ensure t
  :hook (rust-mode . lsp)
  :commands lsp
  :config
  (add-hook 'rust-mode-hook #'lsp-deferred))

(use-package lsp-ui
  :ensure t
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(use-package company-lsp
  :ensure t
  :after company lsp-mode
  :config
  (push 'company-lsp company-backends))

