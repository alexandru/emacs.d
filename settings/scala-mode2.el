(defvar scala-packages '(scala-mode2
                         ensime
                         exec-path-from-shell))

(dolist (p scala-packages)
  (unless (package-installed-p p)
    (package-install p)))

(setenv "PATH" (concat "/Users/alex/bin:" (getenv "PATH")))
(setenv "PATH" (concat "/Users/alex/bin/scala-2.11.4/bin:" (getenv "PATH")))

(when (memq window-system '(mac ns))
    (exec-path-from-shell-initialize))

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

