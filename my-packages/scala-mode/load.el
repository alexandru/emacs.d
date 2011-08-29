(add-to-list 'load-path "~/.emacs.d/my-packages/scala-mode")
(require 'scala-mode)

(add-hook 'scala-mode-hook
          '(lambda ()
             (yas/minor-mode-on)))

(add-to-list 'auto-mode-alist '("\\.scala$" . scala-mode))
