(defvar emoji-packages '(emojify))

(dolist (p emoji-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-hook 'after-init-hook #'global-emojify-mode)


