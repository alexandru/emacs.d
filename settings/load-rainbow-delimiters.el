;;; load-rainbow-delimiters.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; `https://github.com/Fanael/rainbow-delimiters'
;;

;;; Code:

(use-package rainbow-delimiters
  :ensure t
  :commands 'rainbow-delimiters-mode
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  )

(provide 'load-rainbow-delimiters)
;;; load-rainbow-delimiters.el ends here
