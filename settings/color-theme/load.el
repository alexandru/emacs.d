(when (not (package-installed-p 'color-theme))
  (package-refresh-contents)
  (package-install 'color-theme))

(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-laptop)
