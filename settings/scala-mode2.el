(defvar scala-packages '(scala-mode2
                         exec-path-from-shell
                         ensime))

(dolist (p scala-packages)
  (unless (package-installed-p p)
    (package-install p)))

(setenv "PATH" (concat "/Users/alex/bin:" (getenv "PATH")))
(setenv "PATH" (concat "/Users/alex/bin/scala-2.11.7/bin:" (getenv "PATH")))
(when (memq window-system '(mac ns)) (exec-path-from-shell-initialize))

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; OPTIONAL
;; there are some great Scala yasnippets, browse through:
;; https://github.com/AndreaCrotti/yasnippet-snippets/tree/master/scala-mode
(add-hook 'scala-mode-hook #'yas-minor-mode)
;; but company-mode / yasnippet conflict. Disable TAB in company-mode with
(define-key company-active-map [tab] nil)

