(defvar graphviz-packages '(graphviz-dot-mode))

(dolist (p graphviz-packages)
  (unless (package-installed-p p)
    (package-install p)))

(require 'graphviz-dot-mode)

(setq graphviz-dot-view-edit-command 't)

