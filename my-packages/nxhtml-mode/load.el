(load "~/.emacs.d/my-packages/nxhtml-mode/nxhtml/autostart.el")
(setq mumamo-background-colors nil) 
(add-to-list 'auto-mode-alist '("\\.tpl.html$" . django-html-mumamo-mode))
