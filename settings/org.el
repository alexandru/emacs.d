(defvar org-packages '(org org-plus-contrib))

(dolist (p org-packages)
  (unless (package-installed-p p)
    (package-install p)))

(require 'org)
