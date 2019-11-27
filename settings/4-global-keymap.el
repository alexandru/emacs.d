;; easy access to the customizations file
(set-register ?e '(file . "~/.emacs.d/settings"))
(set-register ?s '(file . "~/.emacs.d/snippets"))
(set-register ?d '(file . "~/Dropbox/Notes/"))

;; Opposite of \M-q (fill-paragraph)
(global-set-key "\M-Q" 'unfill-paragraph)

;; Editing improvements
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key [C-tab] 'completion-at-point)
(global-set-key [f5] 'kmacro-end-and-call-macro)
(global-set-key "\C-x\C-k" 'kill-region)

;; Toggles soft line/word wrap (same behavior as in VS Code)
(global-set-key "\M-z" 'toggle-truncate-lines)

;; Recent files
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; Inserts the date and time
(global-set-key "\C-c\ d" 'today)
(global-set-key "\C-c\ t" 'now)

;; Shortcut for maximizing the window
(global-set-key (kbd "s-+") (lambda () (interactive) (set-frame-parameter nil 'fullscreen 'maximized)))

;;; Switches between horizontal and vertical split
(global-set-key (kbd "C-x |") 'toggle-window-split)  

;;; Find file under cursor
(global-set-key (kbd "s-.") 'ffap)

;;; Inserts the em-dash
(global-set-key (kbd "M-_") (lambda () (interactive) (insert "—")))