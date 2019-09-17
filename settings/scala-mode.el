(use-package scala-mode
  :ensure t
  :mode "\\.s\\(cala\\|bt\\)$"
  :config
  (add-hook 'scala-mode-hook #'yas-minor-mode))

(use-package sbt-mode
  :ensure t
  :commands sbt-start sbt-command
  :config
  ;; WORKAROUND: https://github.com/ensime/emacs-sbt-mode/issues/31
  ;; allows using SPACE when in the minibuffer
  (substitute-key-definition
   'minibuffer-complete-word
   'self-insert-command
   minibuffer-local-completion-map))
