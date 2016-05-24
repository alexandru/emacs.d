(defvar scala-packages '(scala-mode
                         exec-path-from-shell))

(dolist (p scala-packages)
  (unless (package-installed-p p)
    (package-install p)))

;(setenv "PATH" (concat "/Users/alex/bin:" (getenv "PATH")))
;(setenv "PATH" (concat "/Users/alex/bin/scala-2.11.7/bin:" (getenv "PATH")))
;(when (memq window-system '(mac ns)) (exec-path-from-shell-initialize))

(add-hook 'scala-mode-hook #'yas-minor-mode)


