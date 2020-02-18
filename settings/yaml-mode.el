(use-package yaml-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("_oasis\\'" . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.yaml\\.lock\\'" . yaml-mode)))
