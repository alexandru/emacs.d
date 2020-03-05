;;; load-scala.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; NOTE — for metals to work, the binary has to be in PATH:
;; `https://scalameta.org/metals/docs/editors/emacs.html'
;;

;;; Code:

(use-package scala-mode
  :ensure t
  :mode "\\.s\\(cala\\|bt\\)$"
  :config
  (add-hook 'scala-mode-hook #'yas-minor-mode)
  (add-hook 'scala-mode-hook #'flycheck-mode)
  (local-set-key (kbd "C-x '") 'sbt-run-previous-command))

(use-package sbt-mode
  :ensure t
  :commands sbt-start sbt-command
  :config
  ;; WORKAROUND: https://github.com/ensime/emacs-sbt-mode/issues/31
  ;; allows using SPACE when in the minibuffer
  (substitute-key-definition
   'minibuffer-complete-word
   'self-insert-command
   minibuffer-local-completion-map)
   ;; sbt-supershell kills sbt-mode:  https://github.com/hvesalai/emacs-sbt-mode/issues/152
   (setq sbt:program-options '("-Dsbt.supershell=false")))

(provide 'load-scala)
;;; load-scala.el ends here
