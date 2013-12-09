(when (not (package-installed-p 'yasnippet))
  (package-install 'yasnippet))

(require 'yasnippet)
(yas-global-mode 1)
(yas-load-directory "~/.emacs.d/snippets")

