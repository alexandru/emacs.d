(unless (package-installed-p 'exec-path-from-shell)
  (package-refresh-contents)
  (package-install 'exec-path-from-shell))

;; IDO - for better buffer and file interactions
(require 'ido)
(ido-mode t)
