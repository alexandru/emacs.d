;;; load-org.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; `https://orgmode.org/'
;;

;;; Code:

(use-package org
  :ensure t
  :ensure org-plus-contrib
  :config
  (add-hook 'org-mode-hook #'visual-line-mode)

  ; Keyboard shortcuts
  (global-set-key "\C-cl" 'org-store-link)
  (global-set-key "\C-ca" 'org-agenda)

  ;; Customizing path where Org files are
  (setq org-agenda-files '("~/Dropbox/Notes/org/"))  

  ;; Makes org files indexable and viewable by Dropbox
  (add-to-list 'auto-mode-alist '("\\.org.txt$" . org-mode))

  ;; Activate module for tracking habbits
  (add-to-list 'org-modules 'org-habit t)

  ;; Activate org-crypt
  (require 'org-crypt)
  (org-crypt-use-before-save-magic)
  (setq org-tags-exclude-from-inheritance (quote ("crypt")))
  
  ;; GPG key to use for encryption
  ;; Either the Key ID or set to nil to use symmetric encryption.
  (setq org-crypt-key "74F892DD") ; alex@nedelcu.net
  ;; Keyboard shortcut
  (add-hook 'org-mode-hook (lambda () (local-set-key (kbd "C-c d") 'org-decrypt-entries)))
  ;; Make org-agenda-files take gpg files into account
  ;; https://emacs.stackexchange.com/questions/36542/include-org-gpg-files-in-org-agenda
  (setq org-agenda-file-regexp "\\`[^.].*\\.org\\(\\.txt\\|\\.gpg\\)?\\'")

  ;; Resume clocking task when emacs is restarted
  (org-clock-persistence-insinuate)
  ;; Save the running clock and all clock history when exiting Emacs, load it on startup
  (setq org-clock-persist t)
  ;; Resume clocking task on clock-in if the clock is open
  (setq org-clock-in-resume t)
  ;; Do not prompt to resume an active clock, just resume it
  (setq org-clock-persist-query-resume nil)

  ;; Save clock data and state changes and notes in the LOGBOOK drawer
  (setq org-clock-into-drawer t)
  ;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks
  ;; with 0:00 duration
  (setq org-clock-out-remove-zero-time-clocks t)
  ;; Clock out when moving task to a done state
  (setq org-clock-out-when-done t)
  ;; Enable auto clock resolution for finding open clocks
  (setq org-clock-auto-clock-resolution (quote when-no-clock-is-running))
  ;; Include current clocking task in clock reports
  (setq org-clock-report-include-clocking-task t)
  ;; use pretty things for the clocktable
  (setq org-pretty-entities t)
  )


(use-package toc-org
  :ensure t
  :config
  (add-hook 'org-mode-hook 'toc-org-mode)
  (add-hook 'markdown-mode-hook 'toc-org-mode)
)

(provide 'load-org)
;;; load-org.el ends here
