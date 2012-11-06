(add-to-list 'load-path "~/.emacs.d/my-packages/coffee-mode")
(require 'coffee-mode)

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(defun coffee-custom ()
  "coffee-mode-hook"
  (setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
  (setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace
  (whitespace-mode))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))