;; --------------------------------------------------------------
;;
;; Configuration for the package manager
;;

(require 'package)
(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("ORG Mode"     . "https://orgmode.org/elpa/")
        ("MELPA Stable" . "https://stable.melpa.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/"))
      package-archive-priorities
      '(("GNU ELPA"     . 10)
        ("ORG Mode"     . 9)
        ("MELPA Stable" . 5)
        ("MELPA"        . 0)))
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
