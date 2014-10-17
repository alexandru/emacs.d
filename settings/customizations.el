(auto-fill-mode)
(x-focus-frame nil)

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
(set-register ?o '(file . "~/Google Drive/Personal/Org/help.txt"))

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

;; settings for graphical mode

(tool-bar-mode -1)

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

;; finds file in project (root directory found by searching for .git)

(global-set-key (kbd "C-t") 'find-file-in-project)

;; use aspell for spell-checking instead of ispell

(setq ispell-program-name "/opt/local/bin/aspell")
