(require 'ido)
(ido-mode t)

(defun ido-my-keys ()
  "Add my keybindings for ido."
  (define-key ido-completion-map "\C-w" 'ido-delete-backward-updir)
)

(add-hook 'ido-setup-hook 'ido-my-keys)
