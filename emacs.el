(add-to-list 'load-path "~/.emacs.d/elpa/")

(require 'package)
(add-to-list 'package-archives 
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(exec-path-from-shell-initialize)

(load-file "~/.emacs.d/settings/customizations.el")
(load-file "~/.emacs.d/settings/color-theme.el")
(load-file "~/.emacs.d/settings/org-mode.el")
(load-file "~/.emacs.d/settings/yasnippets.el")
(load-file "~/.emacs.d/settings/clojure-mode.el")
(load-file "~/.emacs.d/settings/scala-mode2.el")
(load-file "~/.emacs.d/settings/typescript-mode.el")




