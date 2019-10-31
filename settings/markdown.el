(use-package markdown-mode
  :ensure t
  :config

  (add-to-list 'auto-mode-alist
               '("\\.md.erb\\'" . markdown-mode))
  )

(use-package deft
  :ensure t)