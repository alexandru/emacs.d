(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")

(defun copy-current-word ()
  (interactive)
  (save-excursion
    (let (pt1 pt2)
      (skip-chars-backward "-_A-Za-z0-9.")
      (setq pt1 (point))
      (skip-chars-forward "-_A-Za-z0-9.")
      (setq pt2 (point))
      (kill-ring-save pt1 pt2))))

(defun scala-duckduckgo-api-search-url (query)
  (concat
   "https://www.google.com/search?q="
   (url-hexify-string 
    (concat
     query " site:www.scala-lang.org/api/current/"))))

(defun scala-duckduckgo-web-search-url (query)
  (concat
   "https://www.google.com/search?q="
   (url-hexify-string (concat "scala " query))))

(defun scala-search-api ()
  (interactive)
  (copy-current-word)
  (browse-url (scala-duckduckgo-api-search-url (car kill-ring))))

(defun scala-search-web ()
  (interactive)
  (copy-current-word)
  (browse-url (scala-duckduckgo-web-search-url (car kill-ring))))

(add-hook 'scala-mode-hook
	  '(lambda ()
	     (scala-mode-feature-electric-mode)
	     (local-set-key (kbd "M-h h") 'scala-search-api)
	     (local-set-key (kbd "M-h M-h") 'scala-search-web)))
