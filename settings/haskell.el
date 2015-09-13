(defvar haskell-packages '(haskell-mode))

(dolist (p haskell-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-hook 'haskell-mode-hook 'haskell-indentation-mode)
