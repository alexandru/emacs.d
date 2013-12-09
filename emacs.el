(add-to-list 'load-path "~/.emacs.d/elpa/")

(require 'package)
(add-to-list 'package-archives 
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(load-file "~/.emacs.d/customizations.el")

(load-file "~/.emacs.d/settings/yasnippets/load.el")
(load-file "~/.emacs.d/settings/clojure-mode/load.el")




