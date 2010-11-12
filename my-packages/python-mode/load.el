(add-hook 'python-mode-hook 
      (lambda ()
	(local-set-key [(control ?<)] 'python-shift-left)
	(local-set-key [(control ?>)] 'python-shift-right)
	(flymake-mode)))