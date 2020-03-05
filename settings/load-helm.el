;;; load-helm.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; https://github.com/emacs-helm/helm
;;

;;; Code:

(use-package helm
  :ensure t
  :config
  (global-set-key (kbd "s-P") 'helm-M-x)
  (global-set-key (kbd "M-P") 'helm-M-x))

(provide 'load-helm)
;;; load-helm.el ends here
