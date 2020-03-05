;;; load-flycheck.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; `https://github.com/flycheck/flycheck'
;;

;;; Code:

;; Enable nice rendering of diagnostics like compile errors.
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)
  )

(provide 'load-flycheck)
;;; load-flycheck.el ends here
