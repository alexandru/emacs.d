(defvar haskell-packages '(haskell-mode intero))

(dolist (p haskell-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-hook 'haskell-mode-hook 'haskell-indentation-mode)
(add-hook 'haskell-mode-hook 'intero-mode)

(add-hook 'haskell-mode-hook
	  (lambda ()
	    (local-set-key "\C-c\C-h" 'haskell-hoogle)))
