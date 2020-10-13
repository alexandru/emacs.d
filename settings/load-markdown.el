;;; load-markdown.el --- -*- lexical-binding: t; -*-

;;; Commentary:
;;
;;  - `https://github.com/defunkt/markdown-mode'
;;  - `https://github.com/jrblevin/deft'
;;

;;; Code:

(use-package markdown-mode
  :ensure t
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . gfm-mode))  
  :config

  ;; https://emacs.stackexchange.com/questions/13189/github-flavored-markdown-mode-syntax-highlight-code-blocks/33497
  (setq markdown-fontify-code-blocks-natively t)
  (setq markdown-enable-wiki-links 1)

  ;; https://gist.github.com/fredRos/0e3a845de95ec654538f
  (setq markdown-command
        "pandoc -c \"file://$HOME/.emacs.d/media/gfm.css\" --from markdown+markdown_in_html_blocks -t html5 --mathjax --highlight-style pygments --standalone --shift-heading-level-by=-1")
  
  (add-to-list 'auto-mode-alist
               '("\\.md.erb\\'" . markdown-mode))

  ;; (defun my-mmm-markdown-auto-class (lang &optional submode)
  ;;   "Define a mmm-mode class for LANG in `markdown-mode' using SUBMODE.
  ;;    If SUBMODE is not provided, use `LANG-mode' by default."
  ;;   (let ((class (intern (concat "markdown-" lang)))
  ;;         (submode (or submode (intern (concat lang "-mode"))))
  ;;         (front (concat "^```" lang "[\n\r]+"))
  ;;         (back "^```"))
  ;;     (mmm-add-classes (list (list class :submode submode :front front :back back)))
  ;;     (mmm-add-mode-ext-class 'markdown-mode nil class)))

  ;; ;; Mode names that derive directly from the language name
  ;; (mapc 'my-mmm-markdown-auto-class
  ;;       '("awk"
  ;;         "bibtex"
  ;;         "c"
  ;;         "cpp"
  ;;         "css"
  ;;         "haskell"
  ;;         "html"
  ;;         "javascript"
  ;;         "latex"
  ;;         "lisp"
  ;;         "makefile"
  ;;         "markdown"
  ;;         "python"
  ;;         "r"
  ;;         "ruby"
  ;;         "scala"
  ;;         "sql"
  ;;         "stata"
  ;;         "xml"))
  )

(provide 'load-markdown)
;;; load-markdown.el ends here
