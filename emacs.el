(server-start)

(add-to-list 'load-path "~/.emacs.d/elpa/")

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(load-file "~/.emacs.d/customizations.el")

(load-file "~/.emacs.d/my-packages/yasnippets/load.el")
(load-file "~/.emacs.d/my-packages/clojure-mode/load.el")
(load-file "~/.emacs.d/my-packages/flymake-mode/load.el")
(load-file "~/.emacs.d/my-packages/python-mode/load.el")
(load-file "~/.emacs.d/my-packages/javascript-mode/load.el")
(load-file "~/.emacs.d/my-packages/ruby-mode/load.el")
(load-file "~/.emacs.d/my-packages/coffee-mode/load.el")



