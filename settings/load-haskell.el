;;; load-haskell.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;;  - `https://github.com/haskell/haskell-mode'
;;  - `https://github.com/jyp/dante'
;;

;;; Code:

(use-package haskell-mode
  :ensure t
  :init
  (add-hook 'haskell-mode-hook 'haskell-indentation-mode)
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  ;; OR:
  ;; (add-hook 'haskell-mode-hook 'flymake-mode)
  (add-hook 'haskell-mode-hook (lambda () (local-set-key "\C-c\C-h" 'haskell-hoogle)))
  )

(use-package dante
  :ensure t
  :after haskell-mode
  :commands 'dante-mode
  :init
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  ;; OR:
  ;; (add-hook 'haskell-mode-hook 'flymake-mode)
  (add-hook 'haskell-mode-hook 'dante-mode)
  (add-hook 'dante-mode-hook
     '(lambda () (flycheck-add-next-checker 'haskell-dante
                  '(warning . haskell-hlint))))
  )

(provide 'load-haskell)
;;; load-haskell.el ends here
