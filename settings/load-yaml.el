;;; load-yaml.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; 
;;

;;; Code:

(use-package yaml-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("_oasis\\'" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml\\.lock\\'" . yaml-mode)))

(provide 'load-yaml)
;;; load-yaml.el ends here
