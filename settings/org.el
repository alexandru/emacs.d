(defvar org-packages '(org org-plus-contrib))

(dolist (p org-packages)
  (unless (package-installed-p p)
    (package-install p)))

(add-hook 'org-mode-hook #'visual-line-mode)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)

(require 'org)

;; For encrypting items in org-mode
;; https://orgmode.org/worg/org-tutorials/encrypting-files.html
(require 'org-crypt)
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))
;; GPG key to use for encryption
;; Either the Key ID or set to nil to use symmetric encryption.
(setq org-crypt-key "74F892DD") ; alex@nedelcu.net

;; Makes org files indexable and viewable by Dropbox
(add-to-list 'auto-mode-alist '("\\.org.txt$" . org-mode))

;; Keyboard shortcuts
(global-set-key (kbd "C-c a") 'org-agenda)

(add-hook 'org-mode-hook
          (lambda () (local-set-key (kbd "C-c d") 'org-decrypt-entries)))

;; Make org-agenda-files take gpg files into account
;; https://emacs.stackexchange.com/questions/36542/include-org-gpg-files-in-org-agenda
(unless (string-match-p "\\.gpg" org-agenda-file-regexp)
  (setq org-agenda-file-regexp
        (replace-regexp-in-string "\\\\\\.org" "\\\\.org\\\\(\\\\.gpg\\\\)?"
                                  org-agenda-file-regexp)))

;; Customizing path where Org files are
(setq org-agenda-files '("~/Dropbox/Notes/"))
