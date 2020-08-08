;;; load-langtool.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; `https://github.com/mhayashi1120/Emacs-langtool'
;;

;;; Code:

(use-package langtool
  :ensure t
  :config
  (global-set-key "\C-x4w" 'langtool-check)
  (global-set-key "\C-x4W" 'langtool-check-done)
  (global-set-key "\C-x4l" 'langtool-switch-default-language)
  (global-set-key "\C-x44" 'langtool-show-message-at-point)
  (global-set-key "\C-x4c" 'langtool-correct-buffer)

  (setq langtool-default-language "en-US")
  (setq langtool-java-bin "/Users/wp79lh/.nix-profile/bin/java")
  (setq langtool-bin "/Users/wp79lh/.nix-profile/bin/languagetool")
  (setq langtool-mother-tongue "ro"))

(provide 'load-langtool)
;;; load-langtool.el ends here
