(auto-fill-mode)

;; fix rectangles in OS X
;; http://stuff-things.net/2015/10/05/emacs-visible-bell-work-around-on-os-x-el-capitan/

(setq visible-bell nil) ;; The default
(setq ring-bell-function 'ignore)

;; revert filling (Alt + Q)

(defun unfill-paragraph ()
  (interactive)
  (let ((fill-column (point-max)))
  (fill-paragraph nil)))

(global-set-key "\M-Q" 'unfill-paragraph)

;; set indenting stuff for a whole buch of C-ish languages

(let ((c-stuff (function (lambda ()
                           (setq indent-tabs-mode nil)
                           (c-set-style "stroustrup")
			   (setq c-hungry-delete-key t)))))
  (setq c-mode-hook c-stuff)
  (setq c++-mode-hook c-stuff)
  (setq java-mode-hook c-stuff)
  (setq csharp-mode-hook c-stuff))

;; easy access to the customizations file

(set-register ?e '(file . "~/.emacs.d/settings"))
(set-register ?s '(file . "~/.emacs.d/snippets"))

;; do not make backups

(setq make-backup-files nil) ; stop it from making backups

;; stops it from adding a newline automatically

(defun my-text-mode-settings ()
  (setq mode-require-final-newline nil))

(add-hook 'text-mode-hook 'my-text-mode-settings)

;; disable welcome message

(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq initial-scratch-message nil) 

;; editing improvements

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key [C-tab] 'completion-at-point)
(global-set-key [f5] 'kmacro-end-and-call-macro)
(global-set-key "\C-x\C-k" 'kill-region)

(setq-default truncate-lines t)

;; recent files 

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

; interacts with the OS clipboard
(setq x-select-enable-clipboard t)

;; uniq lines

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

;; use aspell for spell-checking instead of ispell

(setq ispell-program-name "aspell")

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

(global-set-key (kbd "C-x |") 'toggle-window-split)
