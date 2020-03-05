;;; load-yasnippets.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; `https://github.com/joaotavora/yasnippet'
;;

;;; Code:

(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)

(provide 'load-yasnippets)
;;; load-yasnippets.el ends here
