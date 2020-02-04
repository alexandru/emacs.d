
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
  )
