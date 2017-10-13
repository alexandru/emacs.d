(unless (package-installed-p 'exec-path-from-shell)
  (package-refresh-contents)
  (package-install 'exec-path-from-shell))

; Loads PATH from the environment
(when (memq window-system '(mac ns)) (exec-path-from-shell-initialize))

; Sets font size
(set-face-attribute 'default nil :height 170)
; Sets editor theme
(load-theme 'deeper-blue t nil)

; Maximizes the window
(run-at-time "2 sec" nil
             (lambda () (set-frame-parameter nil 'fullscreen 'maximized)))

; Graphical options
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode 1)

; IDO - for better buffer and file interactions
(require 'ido)
(ido-mode t)
