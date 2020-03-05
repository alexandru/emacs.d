;;; load-rust.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; `https://github.com/rust-lang/rust-mode'
;;

;;; Code:

(use-package rust-mode
  :ensure t
  :after lsp-mode
  :config
  (add-hook 'rust-mode-hook #'lsp-deferred))

(provide 'load-rust)
;;; load-rust.el ends here
