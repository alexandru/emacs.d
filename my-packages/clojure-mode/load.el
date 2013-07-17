(require 'clojure-mode)

(add-hook 'nrepl-interaction-mode-hook
  'nrepl-turn-on-eldoc-mode)

(setq nrepl-popup-stacktraces nil)

(add-to-list 'same-window-buffer-names "*nrepl*")

(add-hook 'clojure-mode-hook 'paredit-mode)

(add-to-list 'auto-mode-alist '("\\.cljs$" . clojure-mode))

;(defun na-load-buffer ()
;  (interactive)
;  (point-to-register 5)
;  (mark-whole-buffer)
;  (lisp-eval-region (point) (mark) nil)
;  (jump-to-register 5))

;(add-hook 'clojure-mode-hook
;          '(lambda ()
;             (define-key clojure-mode-map 
;               "\e\C-x" 'lisp-eval-defun)
;             (define-key clojure-mode-map 
;               "\C-x\C-e" 'lisp-eval-last-sexp)
;             (define-key clojure-mode-map 
;               "\C-c\C-e" 'lisp-eval-last-sexp)
;             (define-key clojure-mode-map 
;               "\C-c\C-r" 'lisp-eval-region)
;             (define-key clojure-mode-map 
;               "\C-c\C-l" 'na-load-buffer)
;             (define-key clojure-mode-map 
;               "\C-c\C-z" 'run-lisp)))

;(setq inferior-lisp-program "/home/alex/bin/lein repl")
;(setq inferior-lisp-program "/home/alex/bin/lein trampoline cljsbuild repl-listen")

;(defun na-load-buffer ()
;  (interactive)
;  (point-to-register 5)
;  (mark-whole-buffer)
;  (lisp-eval-region (point) (mark) nil)
;  (jump-to-register 5))

;(add-hook 'clojure-mode-hook
;          '(lambda ()
;             (define-key clojure-mode-map 
;               "\e\C-x" 'lisp-eval-defun)
;             (define-key clojure-mode-map 
;               "\C-x\C-e" 'lisp-eval-last-sexp)
;             (define-key clojure-mode-map 
;               "\C-c\C-e" 'lisp-eval-last-sexp)
;             (define-key clojure-mode-map 
;               "\C-c\C-r" 'lisp-eval-region)
;             (define-key clojure-mode-map 
;               "\C-c\C-l" 'na-load-buffer)
;             (define-key clojure-mode-map 
;               "\C-c\C-z" 'run-lisp)))

;(setq inferior-lisp-program "/home/alex/bin/lein repl")

