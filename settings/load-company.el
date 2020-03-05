;;; load-company.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; `https://github.com/company-mode/company-mode'
;;

;;; Code:

(use-package company
  :ensure t
  :config
  ;; aligns annotation to the right hand side
  (setq company-tooltip-align-annotations t))

(use-package company-quickhelp
  :ensure t
  :bind
  (:map company-active-map ("M-h" . company-quickhelp-manual-begin))  
  :config
  (setq company-quickhelp-delay nil)
  (company-quickhelp-mode +1))

(provide 'load-company)
;;; load-company.el ends here
