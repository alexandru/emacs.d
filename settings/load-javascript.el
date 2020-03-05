;;; load-javascript.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;;  - `https://github.com/mooz/js2-mode'
;;  - `https://github.com/emacs-typescript/typescript.el'
;;  - `https://github.com/ananthakumaran/tide'
;;

;;; Code:

(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (setq tide-format-options '(:indentSize 2 :tabSize 2))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

(use-package js2-mode
  :ensure t)

(use-package typescript-mode
  :ensure t
  :after js2-mode lsp-mode
  :config
  (add-hook 'typescript-mode-hook #'lsp-deferred))

(use-package tide
  :ensure t
  :after typescript-mode company
  :config
  (add-hook 'typescript-mode-hook #'setup-tide-mode))

(provide 'load-javascript)
;;; load-javascript.el ends here
