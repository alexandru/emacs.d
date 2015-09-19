(when (not (package-installed-p 'monokai-theme))
  (package-refresh-contents)
  (package-install 'monokai-theme))

(load-theme 'monokai t)

