(defvar my-packages '(better-defaults
                      clojure-mode
                      cider))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-hook 'clojure-mode-hook #'yas-minor-mode)
(add-hook 'clojure-mode-hook #'paredit-mode)
