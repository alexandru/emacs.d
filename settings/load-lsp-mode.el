;;; load-lsp-mode.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; LSP (Language Server Extension)
;; `https://code.visualstudio.com/api/language-extensions/language-server-extension-guide'
;;

;;; Code:

(use-package lsp-mode
  :ensure t
  :pin melpa
  :after which-key
  :init (setq lsp-keymap-prefix "S-l")
  :hook (
         (rust-mode . lsp-deferred)
         (scala-mode . lsp-deferred)
         (lsp-mode . lsp-enable-which-key-integration))
  :config
  (setq lsp-prefer-flymake nil)
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :pin melpa
  :commands lsp-ui-mode
  :init
  ;; (setq lsp-ui-doc-use-webkit t)
  )

;; Add company-lsp backend for metals
(use-package company-lsp
  :ensure t
  :pin melpa
  :commands company-lsp)

(provide 'load-lsp-mode)
;;; load-lsp-mode.el ends here
