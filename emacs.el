(add-to-list 'load-path "~/.emacs.d/elpa/")

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(unless package-archive-contents (package-refresh-contents))
(package-initialize)

;(exec-path-from-shell-initialize)
(load-file "~/.emacs.d/settings/server.el")
(load-file "~/.emacs.d/settings/customizations.el")
(load-file "~/.emacs.d/settings/general.el")
(load-file "~/.emacs.d/settings/projectile.el")
(load-file "~/.emacs.d/settings/paredit.el")
(load-file "~/.emacs.d/settings/yasnippets.el")
(load-file "~/.emacs.d/settings/clojure-mode.el")
(load-file "~/.emacs.d/settings/scala-mode.el")
(load-file "~/.emacs.d/settings/fsharp-mode.el")

