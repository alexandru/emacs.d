(defvar yaml-packages '(yaml-mode))

(dolist (p yaml-packages)
  (unless (package-installed-p p)
    (package-install p)))

(require 'yaml-mode)

(add-to-list 'auto-mode-alist '("_oasis\\'" . yaml-mode))
