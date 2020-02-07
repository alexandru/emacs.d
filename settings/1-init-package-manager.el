;; --------------------------------------------------------------
;;
;; Configuration for the package manager
;;

(require 'package)
(setq package-archives
      '(("gnu-elpa"     . "https://elpa.gnu.org/packages/")
        ("org-mode"     . "https://orgmode.org/elpa/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")
        ("melpa"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(
        ("melpa-stable" . 20)
        ("gnu-elpa"     . 10)
        ("org-mode"     . 9)
        ("melpa"        . 0)))
(package-initialize)

(when (not package-archive-contents) (package-refresh-contents))

;; --------------------------------------------------------------
;;
;; Activate management via 'use-package'
;; https://github.com/jwiegley/use-package
;;

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; --------------------------------------------------------------
;;
;; Keeps packages up-to-date
;;

(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))
