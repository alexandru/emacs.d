;;; load-graphviz.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; `https://github.com/ppareit/graphviz-dot-mode'
;;

;;; Code:

(use-package graphviz-dot-mode
  :ensure t
  :init
  (setq graphviz-dot-view-edit-command 't))

(provide 'load-graphviz)
;;; load-graphviz.el ends here
