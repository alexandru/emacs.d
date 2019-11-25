(use-package markdown-mode
  :ensure t
  :config

  (add-to-list 'auto-mode-alist
               '("\\.md.erb\\'" . markdown-mode))
  )

(use-package deft
  :bind (("<f8>" . deft))
  :commands (deft deft-open-file deft-new-file-named)
  :config
  (setq deft-directory "~/Notes/"
        deft-recursive t
        deft-extensions '("md" "txt" "org" "org.txt" "tex")
        deft-use-filter-string-for-filename nil
        deft-use-filename-as-title nil
        deft-markdown-mode-title-level 1
        deft-file-naming-rules '((noslash . "-")
                                 (nospace . "-")
                                 (case-fn . downcase))))

(defun find-oriel-meeting ()
  (interactive)
  (let ((daily-name (format-time-string "%Y-%m-%d")))
    (find-file (expand-file-name (concat "~/Notes/Docs/Oriel/Meeting " daily-name ".md")))
    (if (= (buffer-size) 0)
        (insert (concat "# Meeting " daily-name)))))
