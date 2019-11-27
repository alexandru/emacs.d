(use-package projectile
  :ensure t
  :config
  
  (projectile-global-mode)

  (define-key projectile-mode-map [?\s-d] 'projectile-find-dir)
  (define-key projectile-mode-map (kbd "M-p d") 'projectile-find-dir)

  (define-key projectile-mode-map [?\s-p] 'projectile-switch-project)
  (define-key projectile-mode-map (kbd "M-p p") 'projectile-switch-project)

  (define-key projectile-mode-map [?\s-f] 'projectile-find-file)
  (define-key projectile-mode-map (kbd "M-p f") 'projectile-find-file)

  (define-key projectile-mode-map [?\s-g] 'projectile-grep)
  (define-key projectile-mode-map (kbd "M-p g") 'projectile-grep))
