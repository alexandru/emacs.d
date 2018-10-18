(defvar yasnippet-packages '(yasnippet yasnippet-snippets))

(dolist (p yasnippet-packages)
  (unless (package-installed-p p)
    (package-install p)))

(require 'yasnippet)
(require 'yasnippet-snippets)
(yas-global-mode 1)

