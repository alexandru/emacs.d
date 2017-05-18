(unless (package-installed-p 'markdown-mode)
  (package-install 'markdown-mode))

(add-to-list 'auto-mode-alist
             '("\\.md.erb\\'" . markdown-mode))

