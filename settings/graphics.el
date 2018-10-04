;; GUI MODE: sets theme and other settings

;;; How to load different themes for GUI vs terminal ...
;;
;; (defun window-load-theme ()
;;   (if (display-graphic-p)
;;       ;; Loads custom theme
;;       (load-theme 'deeper-blue t nil)
;;     (load-theme 'manoj-dark t nil)))
;;
;; (if (daemonp)
;;     (add-hook 'after-make-frame-functions
;; 	      (lambda (frame)
;; 		(select-frame frame)
;; 		(window-load-theme))))
;;
;; (if (display-graphic-p)
;;     (window-load-theme))

(defun load-graphical-settings ()
  ;; Theme that works for both GUI and terminal:
  (load-theme 'deeper-blue t nil)
  (set-background-color "#000000")
  (set-frame-parameter (selected-frame) 'alpha '(85 . 50))
  ;; Font, with ligatures and everything
  (set-frame-font "Fira Code 16")
  ;; Graphical options
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (menu-bar-mode -1))


(if (daemonp)
    (add-hook 'after-make-frame-functions
	      (lambda (frame)
		(select-frame frame)
		(load-graphical-settings)))
  ;; else
  (load-graphical-settings))


