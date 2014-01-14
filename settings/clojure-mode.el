(defvar my-packages '(starter-kit
                      starter-kit-lisp
                      starter-kit-bindings
                      starter-kit-eshell
                      clojure-mode
                      clojure-test-mode                      
                      ))

(when (not (package-installed-p 'clojure-mode))
  (package-refresh-contents)
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(add-hook 'clojure-mode-hook
          (lambda ()
            (setq inferior-lisp-program "/home/alex/bin/lein repl")
            (setq inferior-lisp-load-command "(load \"%s\")\n")
            (setq lisp-function-doc-command "(doc %s)\n")
            
            (define-key clojure-mode-map 
              "\C-c\C-e" '(lambda ()
                            (interactive)
                            (let ((curr (point)))
                              (end-of-defun)
                              (lisp-eval-last-sexp)
                              (goto-char curr))))
            (define-key clojure-mode-map 
               "\C-x\C-e" 'lisp-eval-last-sexp)
            (define-key clojure-mode-map 
              "\C-c\C-r" 'lisp-eval-region)
            (define-key clojure-mode-map 
              "\C-c\C-c" '(lambda ()
                            (interactive)
                            (lisp-eval-string (buffer-string))))
            (define-key clojure-mode-map 
              "\C-c\C-z" 'run-lisp)
            ))
