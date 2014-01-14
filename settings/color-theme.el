(when (not (package-installed-p 'color-theme))
  (package-refresh-contents)
  (package-install 'color-theme)
  (package-install 'color-theme-monokai))

(require 'color-theme)
(color-theme-initialize)
(color-theme-monokai)
