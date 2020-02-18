(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-find-file)
  (define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
)

(use-package treemacs
  :ensure t)

(use-package treemacs-projectile
  :requires treemacs
  :ensure t
  :config
  (global-set-key [f7] 'treemacs)
  (global-set-key (kbd "s-b") 'treemacs))
