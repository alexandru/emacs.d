;;;
;;; Utilities used in other configuration files
;;;

(defun package-require (&rest packages)
  "Installs the following packages, if not installed already"
  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p))))

;;;
;;; Lists all configuration files
;;;

(load-file "~/.emacs.d/settings/0-set-path.el")
(load-file "~/.emacs.d/settings/1-customizations.el")
(load-file "~/.emacs.d/settings/2-graphics.el")
(load-file "~/.emacs.d/settings/3-basic.el")

(load-file "~/.emacs.d/settings/flycheck.el")
(load-file "~/.emacs.d/settings/emoji.el")
(load-file "~/.emacs.d/settings/epa.el")
(load-file "~/.emacs.d/settings/fira-code.el")
(load-file "~/.emacs.d/settings/fsharp-mode.el")
(load-file "~/.emacs.d/settings/git.el")
(load-file "~/.emacs.d/settings/graphviz.el")
(load-file "~/.emacs.d/settings/haskell.el")
(load-file "~/.emacs.d/settings/ido.el")
(load-file "~/.emacs.d/settings/javascript.el")
(load-file "~/.emacs.d/settings/markdown.el")
;;(load-file "~/.emacs.d/settings/ocaml.el")
(load-file "~/.emacs.d/settings/org.el")
(load-file "~/.emacs.d/settings/paredit.el")
(load-file "~/.emacs.d/settings/projectile.el")
(load-file "~/.emacs.d/settings/scala-mode.el")
(load-file "~/.emacs.d/settings/yaml-mode.el")
(load-file "~/.emacs.d/settings/yasnippets.el")
(load-file "~/.emacs.d/settings/rainbow-delimiters.el")

;; should be last line?
(load-file "~/.emacs.d/settings/keymap.el")

;; Starting server?
;; (load "server")
;; (unless (server-running-p) (server-start))

