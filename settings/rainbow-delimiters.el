;;
;; https://github.com/Fanael/rainbow-delimiters
;; 
(use-package rainbow-delimiters
  :ensure t
  :commands 'rainbow-delimiters-mode
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  )
