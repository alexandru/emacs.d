;; --------------------------------------------------------------
;; Make Emacs use the $PATH set up by the user's shell
;; https://github.com/purcell/exec-path-from-shell

(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize)))

;; --------------------------------------------------------------
;; A small number of better defaults for Emacs
;; https://github.com/technomancy/better-defaults

(use-package better-defaults
  :ensure t)

;; --------------------------------------------------------------
;; GUI MODE: sets theme and other settings

(defun load-graphical-settings ()
  ;;; Theme that works for both GUI and terminal:
  ;; (load-theme 'deeper-blue t nil)
  ;; (set-background-color "#000000")
  ;; (color-theme-initialize); deprecated
  (load-theme 'clarity t)
  ;;; Makes the window transparent...
  ;; (set-frame-parameter (selected-frame) 'alpha '(85 . 50))
  ;;; Font, with ligatures and everything
  (set-frame-font "Fira Code 16")
  ;; --------------------------------------------------------
  ;; Graphical options
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (menu-bar-mode -1)
  ;; Shows cursor column number (off by default)
  (setq column-number-mode t)
  ;; Disable welcome message
  (setq inhibit-startup-message t)
  (setq inhibit-startup-echo-area-message t)
  (setq initial-scratch-message nil)   
  ;; open files in an existing frame instead of a new frame
  (setq ns-pop-up-frames nil))

(use-package color-theme-modern
  :ensure t
  :config
  
  (if (daemonp)
      (add-hook 'after-make-frame-functions
                (lambda (frame)
                  (select-frame frame)
                  (load-graphical-settings)))
    ;; else
    (load-graphical-settings)))

;; --------------------------------------------------------------
;; Enable Recent Files

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 100)
(add-to-list 'recentf-exclude "\\.emacs.d\\'")

;; --------------------------------------------------------------
;; MISC Settings

;; Disable bell
;; http://stuff-things.net/2015/10/05/emacs-visible-bell-work-around-on-os-x-el-capitan/
(setq visible-bell nil) ;; The default
(setq ring-bell-function 'ignore)

;; Enables multi-line (when using M-j for newlines in comments)
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Multi_002dLine-Comments.html
(setq comment-multi-line t)

;; Disables tabs
(setq-default indent-tabs-mode nil)

;; Sets default indentation
;; https://stackoverflow.com/questions/17703992/how-to-set-4-space-indent-in-emacs
(setq-default tab-width 2)

;; Do not make backups
(setq make-backup-files nil)

;; Toggle wrapping off
(setq-default truncate-lines t)

; Interacts with the OS clipboard
(setq x-select-enable-clipboard t)

;; Enables auto-insertion of pair braces
;; https://www.emacswiki.org/emacs/ElectricPair
(electric-pair-mode 1)