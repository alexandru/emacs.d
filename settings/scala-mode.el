(defvar scala-packages '(scala-mode sbt-mode))

(dolist (p scala-packages)
  (unless (package-installed-p p)
    (package-install p)))

;(setenv "PATH" (concat "/Users/alex/bin:" (getenv "PATH")))
;(setenv "PATH" (concat "/Users/alex/bin/scala-2.11.7/bin:" (getenv "PATH")))
(when (memq window-system '(mac ns)) (exec-path-from-shell-initialize))

(add-hook 'scala-mode-hook #'yas-minor-mode)

(use-package sbt-mode
  :commands sbt-start sbt-command
  :config
  ;; WORKAROUND: https://github.com/ensime/emacs-sbt-mode/issues/31
  ;; allows using SPACE when in the minibuffer
  (substitute-key-definition
   'minibuffer-complete-word
   'self-insert-command
   minibuffer-local-completion-map))
