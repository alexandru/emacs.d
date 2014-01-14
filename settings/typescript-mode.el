(when (not (package-installed-p 'tss))
  (package-refresh-contents)
  (package-install 'tss))

;; If use bundled typescript.el,
(require 'typescript)
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

;(require 'tss)

;; Key binding
;(setq tss-popup-help-key "C-:")
;(setq tss-jump-to-definition-key "C->")

;; If there is the mode, which you want to enable TSS,
;(add-to-list 'tss-enable-modes 'hoge-mode)

;; If there is the key, which you want to start completion of auto-complete.el,
;(add-to-list 'tss-ac-trigger-command-keys "=")

;; Do setting recommemded configuration
;(tss-config-default)

