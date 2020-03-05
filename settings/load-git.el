;;; load-git.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; `https://github.com/magit/magit'
;;

;;; Code:

(use-package magit
  :ensure t
  :config
  (global-set-key (kbd "C-x g") 'magit-status))

(provide 'load-git)
;;; load-git.el ends here
