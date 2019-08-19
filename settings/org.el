(defvar org-packages '(org org-plus-contrib))

(dolist (p org-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-hook 'org-mode-hook #'visual-line-mode)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(require 'org)
