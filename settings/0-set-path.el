(unless (package-installed-p 'exec-path-from-shell)
  (package-install 'exec-path-from-shell))

;; Loads PATH from the environment
(exec-path-from-shell-initialize)
