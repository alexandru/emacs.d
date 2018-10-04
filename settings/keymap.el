

;; For toggling between horizontal split and vertical split
;; https://stackoverflow.com/questions/14881020/emacs-shortcut-to-switch-from-a-horizontal-split-to-a-vertical-split-in-one-move
(defun toggle-window-split ()
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
         (next-win-buffer (window-buffer (next-window)))
         (this-win-edges (window-edges (selected-window)))
         (next-win-edges (window-edges (next-window)))
         (this-win-2nd (not (and (<= (car this-win-edges)
                     (car next-win-edges))
                     (<= (cadr this-win-edges)
                     (cadr next-win-edges)))))
         (splitter
          (if (= (car this-win-edges)
             (car (window-edges (next-window))))
          'split-window-horizontally
        'split-window-vertically)))
    (delete-other-windows)
    (let ((first-win (selected-window)))
      (funcall splitter)
      (if this-win-2nd (other-window 1))
      (set-window-buffer (selected-window) this-win-buffer)
      (set-window-buffer (next-window) next-win-buffer)
      (select-window first-win)
      (if this-win-2nd (other-window 1))))))


;; Global shortcut for setting comments
(global-set-key (kbd "s-/") 'comment-dwim)

;; Shortcut for maximizing the window
(global-set-key (kbd "s-+")
		(lambda ()
		  (interactive)
		  (set-frame-parameter nil 'fullscreen 'maximized)))

;;; Switches between horizontal and vertical split
(global-set-key (kbd "C-x |") 'toggle-window-split)  

;;; Find file under cursor
(global-set-key (kbd "s-.") 'ffap)