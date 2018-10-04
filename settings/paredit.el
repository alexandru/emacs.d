(unless (package-installed-p 'paredit)
  (package-install 'paredit))

(add-hook 'emacs-lisp-mode-hook #'paredit-mode)

(add-hook 'paredit-mode-hook
          (lambda ()
            (define-key paredit-mode-map (kbd "C-s-<left>") 'paredit-forward-barf-sexp)
            (define-key paredit-mode-map (kbd "C-s-<right>") 'paredit-forward-slurp-sexp)
	    (define-key paredit-mode-map (kbd "s-/") 'paredit-comment-dwim)))
