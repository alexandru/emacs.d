(when (not (package-installed-p 'yasnippet))
  (package-refresh-contents)
  (package-install 'yasnippet))

(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets-mine"  ;; personal snippets
        "~/.emacs.d/snippets-external" ;; https://github.com/AndreaCrotti/yasnippet-snippets
        ))

(yas-global-mode 1)

