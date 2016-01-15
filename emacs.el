(add-to-list 'load-path "~/.emacs.d/elpa/")

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;(unless package-archive-contents (package-refresh-contents))
(package-initialize)

;(exec-path-from-shell-initialize)
(load-file "~/.emacs.d/settings/server.el")
(load-file "~/.emacs.d/settings/customizations.el")
(load-file "~/.emacs.d/settings/display.el")
(load-file "~/.emacs.d/settings/yasnippets.el")
(load-file "~/.emacs.d/settings/clojure-mode.el")
(load-file "~/.emacs.d/settings/scala-mode2.el")

