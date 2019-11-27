(defun package-require (&rest packages)
  "Installs the following packages, if not installed already"
  (dolist (p packages)
    (unless (package-installed-p p)
      (package-install p))))

(defun unfill-paragraph ()
  "The opposite of fill paragraph (M-q)"
  (interactive)
  (let ((fill-column (point-max)))
    (fill-paragraph nil)))

(defun uniquify-all-lines-region (start end)
  "Find duplicate lines in region START to END keeping first occurrence."
  (interactive "*r")
  (save-excursion
    (let ((end (copy-marker end)))
      (while
	  (progn
	    (goto-char start)
	    (re-search-forward "^\\(.*\\)\n\\(\\(.*\n\\)*\\)\\1\n" end t))
	(replace-match "\\1\n\\2")))))

(defun uniquify-all-lines-buffer ()
  "Delete duplicate lines in buffer and keep first occurrence."
  (interactive "*")
  (uniquify-all-lines-region (point-min) (point-max)))

(defun today ()
  "Inserts the current date in the buffer"
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun now ()
  "Inserts the current time in the buffer"
  (interactive)
  (insert (format-time-string "%H:%M:%S")))

(defun kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))

(defun kill-all-buffers ()
  "Kill all buffers."
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

(defun toggle-window-split ()
  "For toggling between horizontal split and vertical split.

  Source:
  `https://stackoverflow.com/questions/14881020/emacs-shortcut-to-switch-from-a-horizontal-split-to-a-vertical-split-in-one-move'
  "
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
