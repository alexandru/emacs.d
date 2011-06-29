(add-to-list 'load-path "~/.emacs.d/my-packages/csharp-mode")
(require 'csharp-mode)

(add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode))

(defun csharp-custom ()
  "csharp-mode-hook"
 (setq c-basic-offset 8)
 (c-set-offset 'substatement-open 0))

(add-hook 'csharp-mode-hook
  '(lambda() (csharp-custom)))

