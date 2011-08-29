(auto-fill-mode)

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

(set-register ?e '(file . "~/.emacs.d/customizations.el"))

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
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(global-set-key [f5] 'kmacro-end-and-call-macro)

(setq-default truncate-lines t)

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>") 'shrink-window)
(global-set-key (kbd "S-C-<down>") 'enlarge-window)


;; color mode

(require 'color-theme)
(color-theme-initialize)
(color-theme-dark-laptop)

;; recent files 

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; settings for graphical mode

(tool-bar-mode nil)
; interacts with the OS clipboard
(setq x-select-enable-clipboard t)



