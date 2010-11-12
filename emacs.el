(server-start)

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))

(load-file "~/.emacs.d/customizations.el")

(load-file "~/.emacs.d/my-packages/yasnippets/load.el")
(load-file "~/.emacs.d/my-packages/nxhtml-mode/load.el")
(load-file "~/.emacs.d/my-packages/flymake-mode/load.el")
(load-file "~/.emacs.d/my-packages/python-mode/load.el")
(load-file "~/.emacs.d/my-packages/yaml-mode/load.el")
(load-file "~/.emacs.d/my-packages/javascript-mode/load.el")


