(defvar ocaml-packages '(tuareg
                         merlin
                         ocp-indent))

(dolist (p ocaml-packages)
  (unless (package-installed-p p)
    (package-install p)))

;(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
;(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))

(require 'ocp-indent)
(require 'merlin)
(require 'tuareg)

(add-hook 'tuareg-mode-hook 'merlin-mode)
;(add-hook 'tuareg-mode-hook 'ocp-indent)



