(add-to-list 'load-path "~/.emacs.d/my-packages/ensime/elisp/")

(require 'ensime)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

