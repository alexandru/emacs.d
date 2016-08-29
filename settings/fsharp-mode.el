(defvar fsharp-packages '(fsharp-mode))

(dolist (p fsharp-packages)
  (unless (package-installed-p p)
    (package-install p)))

(require 'fsharp-mode)
