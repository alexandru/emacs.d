;;; load-epa.el --- Encryption -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; `https://www.gnu.org/software/emacs/manual/html_mono/epa.html'
;;

;;; Code:

;; Transparent encryption/decryption
;; https://orgmode.org/worg/org-tutorials/encrypting-files.html

(require 'epa-file)
(epa-file-enable)

(provide 'load-epa)
;;; load-epa.el ends here
