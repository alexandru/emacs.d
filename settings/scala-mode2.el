(defvar scala-packages '(scala-mode2
                         ensime))

(dolist (p scala-packages)
  (unless (package-installed-p p)
    (package-install p)))
