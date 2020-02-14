(use-package projectile
  :ensure t
  :config
  (projectile-mode +1)
  (define-key projectile-mode-map (kbd "s-p") 'projectile-find-file)
  (define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
)

(use-package neotree
  :ensure t
  :config
  (global-set-key [f7] 'neotree-toggle)
  (global-set-key (kbd "s-b") 'neotree-toggle))


